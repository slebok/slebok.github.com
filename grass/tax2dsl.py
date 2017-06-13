#!/c/Users/vadim/AppData/Local/Programs/Python/Python35/python
# -*- coding: utf-8 -*-
# pylint: disable=C0103,C0111

import os

wdir = '../../acceptware/patterns/grass/'

mapped = {\
	'LDTA-2012-Zaytsev' : 'NPGR2012',
	'SCAM-J-2009-LammelZ11' : 'JLS-SQJ2011',\
}

def makeheader(title, counter):
	if title:
		title = title + ' in the GraSs'
	else:
		title = 'GraSs: A Taxonomy of Grammar Smells'
	if counter:
		counter = ' ({})'.format(counter)
	else:
		counter = ''
	return '''<?xml version="1.0" encoding="UTF-8"?>
<path css="../www" img="../www"/>
<html doctype>
	<head viewport title="{0}">
	<body>
		<header/>
		<h1><a href="index.html">GraSs</a>: A Taxonomy of Grammar Smells{1}</h1>
'''.format(title, counter)

def makefooter():
	return '''		<div class="last">
			The GraSs taxonomy was created and is maintained by <a href="http://grammarware.github.io/">Dr. Vadim Zaytsev</a> a.k.a. @<a href="http://grammarware.net/">grammarware</a>.
			Page last updated in #LASTMOD#.
			<valid/>
		</div>
	</body>
</html>
'''

def makepic(link, name, text, dim):
	return '''		<pic dwarf{3}>
			<a>{0}.html</a>
			<name>{1}</name>
			<small>{2}</small>
		</pic>
'''.format(link, name, text, ' dim' if dim else '')

def makelastpic(name, text):
	return '''		<pic wide>
			<name>{0}</name>
			<small>{1}</small>
		</pic>
'''.format(name, text)

def makehr():
	return '		<hr/>\n'

def mysplit(s):
	if s.find(':') < 0:
		return s.strip(), ''
	else:
		return s[:s.index(':')].strip(), s[s.index(':')+1:].strip()

def tax2dsl(lines):
	res = []
	i = 0
	while i < len(lines):
		line = lines[i].strip()
		if line == '[example]':
			elines = []
			i += 1
			while i < len(lines) and lines[i].strip() != '[/example]':
				elines.append(lines[i])
				i += 1
			pre = ''.join(elines).replace('\n', '<br/>')
			res.append('<br/><code>' + pre.replace(' ', '&nbsp;') + '</code>')
			i += 1
			continue
		while line.find('[cite]') > -1:
			x = line.index('[cite]')
			y = line.index('[/cite]')
			link = line[x+6:y]
			line = line[:x] + '<a href="http://bibtex.github.io/' + link + '.html">[' + link + ']</a>' + line[y+7:]
		# normalise
		line = line.replace('[code]', '<code>').replace('[/code]', '</code>')
		res.append(line)
		i += 1
	return ' '.join(res)

def tax2tex(lines):
	res = []
	verbatim = False
	for line in lines:
		if verbatim:
			if line.strip() == '[/example]':
				res.append('\\end{verbatim}\n')
				verbatim = False
				continue
			res.append(line)
			continue
		line = line.strip()
		if line.strip() == '[example]':
			res.append('\n\\begin{verbatim}\n')
			verbatim = True
			continue
		while line.find('[cite]') > -1:
			x = line.index('[cite]')
			y = line.index('[/cite]')
			link = line[x+6:y]
			if link in mapped:
				link = mapped[link]
			line = line[:x] + '~\\cite{' + link + '}' + line[y+7:]
		# normalise
		line = line.replace('[code]', '\\texttt{').replace('[/code]', '}')
		line = line.replace(' ~', '~')
		line = line.replace('}~\cite{', ',')
		res.append(line)
	return ' '.join(res)

taxonomy = {}
explanation = {}
longdesc = {}
related = {}
latex = {}

cur1 = cur2 = cur3 = ''
f = open(wdir + 'all.tax', 'r', encoding='utf-8')
for line in f.readlines():
	if line.startswith('\t\t\t'):
		line = line.strip()
		if line.startswith('Related: '):
			related[cur3].append(line[9:].strip())
		elif line.startswith('@ '):
			lines = open(wdir + line[2:].strip(), 'r', encoding='utf-8').readlines()
			longdesc[cur3] = tax2dsl(lines)
			latex[cur3] = tax2tex(lines)
		else:
			longdesc[cur3] += line.strip()
	elif line.startswith('\t\t'):
		a, b = mysplit(line)
		cur3 = a
		taxonomy[cur1][cur2].append(cur3)
		longdesc[cur3] = ''
		related[cur3] = []
		explanation[a] = b if b else '...'
	elif line.startswith('\t'):
		a, b = mysplit(line)
		cur2 = a
		explanation[a] = b if b else '...'
		taxonomy[cur1][cur2] = []
	else:
		a, b = mysplit(line)
		cur1 = a
		explanation[a] = b if b else '...'
		taxonomy[cur1] = {}
f.close()

keys = sorted(taxonomy.keys())

# generate the index
f = open('index.dsl', 'w', encoding='utf-8')
cx = sum([sum([len(taxonomy[key1][key2]) for key2 in taxonomy[key1]]) for key1 in keys])
f.write(makeheader('', '{} smells total'.format(cx)))
f.write(makehr())
for key1 in keys:
	f.write(makepic(key1.lower(), key1, explanation[key1], False))
f.write(makehr())
f.write(makefooter())
f.close()

# generate top levels
for key1 in keys:
	f = open(key1.lower()+'.dsl', 'w', encoding='utf-8')
	cx = sum([len(taxonomy[key1][key2]) for key2 in taxonomy[key1]])
	f.write(makeheader('{} Smells'.format(key1), '{} in the selected group'.format(cx)))
	f.write(makehr())
	for key1e in keys:
		f.write(makepic(key1e.lower(), key1e, explanation[key1e], key1e != key1))
	f.write(makehr())
	for key2 in sorted(taxonomy[key1]):
		f.write(makepic(key2.lower(), key2, explanation[key2], False))
	f.write(makehr())
	f.write(makefooter())
	f.close()

# generate second levels
for key1 in keys:
	for key2 in taxonomy[key1].keys():
		f = open(key2.lower()+'.dsl', 'w', encoding='utf-8')
		cx = len(taxonomy[key1][key2])
		f.write(makeheader('{} Smells ({})'.format(key2, key1), '{} in the selected group'.format(cx)))
		f.write(makehr())
		for key1e in keys:
			f.write(makepic(key1e.lower(), key1e, explanation[key1e], key1e != key1))
		f.write(makehr())
		for key2e in sorted(taxonomy[key1]):
			f.write(makepic(key2e.lower(), key2e, explanation[key2e], key2e != key2))
		f.write(makehr())
		for key3 in sorted(taxonomy[key1][key2]):
			f.write(makepic(key3.lower(), key3, explanation[key3], False))
		f.write(makehr())
		f.write(makefooter())
		f.close()

# generate inner
for key1 in keys:
	for key2 in taxonomy[key1].keys():
		for key3 in taxonomy[key1][key2]:
			f = open(key3.lower()+'.dsl', 'w', encoding='utf-8')
			f.write(makeheader(key3, ''))
			f.write(makehr())
			for key1e in keys:
				f.write(makepic(key1e.lower(), key1e, explanation[key1e], key1e != key1))
			f.write(makehr())
			for key2e in sorted(taxonomy[key1].keys()):
				f.write(makepic(key2e.lower(), key2e, explanation[key2e], key2e != key2))
			f.write(makehr())
			for key3e in sorted(taxonomy[key1][key2]):
				f.write(makepic(key3e.lower(), key3e, explanation[key3e], key3e != key3))
			f.write(makehr())
			s = longdesc[key3]
			if not s:
				s = '???'
			if key3 in related.keys() and related[key3]:
				s = 'Related smells: ' + ', '.join(\
					['<a href="http://tusharma.in/smells/{0}.html">{1}</a>'.format(*x.split('|'))
						for x in related[key3]]) + '<br/>' + s
			f.write(makelastpic(key3, s))
			f.write(makehr())
			f.write(makefooter())
			f.close()

# generate LaTeX
f = open('smells.tex', 'w', encoding='utf-8')
for key1 in keys:
	f.write('\\section{' + key1 + ' Smells}\n\n')
	for key2 in taxonomy[key1].keys():
		f.write('\\subsection{' + key2 + '}\n\n')
		for key3 in taxonomy[key1][key2]:
			f.write('\\subsubsection{' + key3 + '}\n\n')
			if key3 in latex:
				f.write(latex[key3])
			else:
				f.write('TODO\n')
f.close()
