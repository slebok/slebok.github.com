#!/c/Users/vadim/AppData/Local/Programs/Python/Python35/python
# -*- coding: utf-8 -*-
# pylint: disable=C0103,C0111

import os, sys

wdir = '../../acceptware/patterns/grass/'
wdir = os.path.join('..', '..', 'grass')

mapped = {\
	'LDTA-2012-Zaytsev' : 'NPGR2012',
	'SAC-2012-Zaytsev': 'BNF-WAS-HERE2012',
	'SLE-2013-Zaytsev': 'Micropatterns2013',
	'IFM-2009-LammelZ': 'Convergence2009',
	'CSMR-WCRE-2014-Zaytsev': 'Semiparsing2014',
	'SCAM-J-2009-LammelZ11' : 'JLS-SQJ2011',\
}

backmapped = {\
	'BNF': 'https://en.wikipedia.org/wiki/Backus%E2%80%93Naur_form',
	# 'http://www.softwarepreservation.org/projects/ALGOL/paper/Backus-Syntax_and_Semantics_of_Proposed_IAL.pdf/view',
	'Refactoring': 'https://martinfowler.com/books/refactoring.html',
	'McCord1985': 'https://doi.org/10.3115/981210.981223',
	'Roy2009': 'https://doi.org/10.1016/j.scico.2009.02.007',
	'Martin2011': 'https://doi.org/10.1145/1985404.1985412',
	'Sassaman2012': 'https://doi.org/10.1109/MSP.2012.31',
	'Shotgun12': 'http://langsec.org',\
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
		<img src="../www/grass.200.png" style="width:100px;height:100px;" class="flr" />
		<h1><a href="index.html">GraSs</a>: A Taxonomy of Grammar Smells{1}</h1>
'''.format(title, counter)

def makefooter():
	return '''		<div class="last">
			The GraSs taxonomy is a <a href="../credit.html">joint effort</a> maintained by <a href="http://grammarware.github.io/">Dr. Vadim Zaytsev</a> a.k.a. @<a href="http://grammarware.net/">grammarware</a>.
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

def makelastpic(name, text, cat1, cat2):
	return '''			<h2>{0} <span class="edit"><a href="https://github.com/slebok/grass/edit/master/{2}/{3}/{0}.tax">Edit!</a></span></h2>
			<p>{1}</p>
'''.format(name, text, cat1, cat2)

def makehr():
	return '		<hr/>\n'

def mysplit(s):
	if s.find(':') < 0:
		return s.strip(), ''
	else:
		return s[:s.index(':')].strip(), s[s.index(':')+1:].strip()

def splitBySqTag(line, tag):
	x = line.index('['+tag+']')
	y = line.index('[/'+tag+']')
	return line[:x], line[x + 2 + len(tag):y], line[y + 3 + len(tag):]

def tax2dsl(lines):
	res = []
	i = 0
	while i < len(lines):
		line = lines[i].strip()
		if not line:
			res.append('</p><p>')
			i += 1
			continue
		if line.startswith('% '):
			i += 1
			continue
		if line == '[example]' or line == '[example small]':
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
			before, link, after = splitBySqTag(line, 'cite')
			if link.find('/') < 0:
				linkurl = 'http://bibtex.github.io/' + link + '.html'
				linktext = link
			else:
				ls = link.split('/')
				linkurl = 'http://bibtex.github.io/' + ls[1] + '.html'
				linktext = ls[1] + ', ' + ls[0]
			if link in backmapped:
				linkurl = backmapped[link]
			line = before + \
				'<a href="' + linkurl + '">[' + linktext + ']</a>' \
				+ after
		while line.find('[gwnet]') > -1:
			before, link, after = splitBySqTag(line, 'gwnet')
			line = before + \
				'<a href="http://grammarware.net/writes/#' + link + '">[' + link + ']</a>' \
				+ after
		while line.find('[dyol]') > -1:
			before, link, after = splitBySqTag(line, 'dyol')
			line = before + \
				'<a href="http://slebok.github.io/dyol/books/' + link + '.html">[' + link + ']</a>' \
				+ after
		while line.find('[smell]') > -1:
			before, link, after = splitBySqTag(line, 'smell')
			line = before + \
				'<a href="' + link.lower() + '.html">' + link + '</a>' \
				+ after
		if line.find('[zoo]') > -1:
			before, inside, after = splitBySqTag(line, 'zoo')
			zoo = inside.strip().split('|')
			fnote = ' ({0}, <em><a href="http://slebok.github.io/zoo/{1}">{2}</a></em>, {3})'.format(*zoo)
			line = before + fnote + after
		# normalise
		# TODO smell -> a href
		line = line.replace('[code]', '<code>').replace('[/code]', '</code>')
		line = line.replace('[verb]', '<code>').replace('[/verb]', '</code>')
		line = line.replace('[emph]', '<em>').replace('[/emph]', '</em>')
		line = line.replace('[list]', '<ul>').replace('[/list]', '</ul>')
		line = line.replace('[item]', '<li>').replace('[/item]', '</li>')
		line = line.replace('---', ' – ').replace('``', '“').replace("''", '”')
		res.append(line)
		i += 1
	return ' '.join(res)

def tax2tex(lines):
	res = []
	verbatim = False
	small = False
	for line in lines:
		if verbatim:
			if line.strip() == '[/example]':
				res.append('\\end{verbatim}\n')
				if small:
					res.append('}')
					small = False
				verbatim = False
				continue
			res.append(line)
			continue
		line = line.strip()
		if line.startswith('% '):
			continue
		if not line:
			res.append('\n\n')
			continue
		if line.strip() == '[example]':
			res.append('\n\\begin{verbatim}\n')
			verbatim = True
			continue
		if line.strip() == '[example small]':
			res.append('\n{\\footnotesize\\begin{verbatim}\n')
			verbatim = True
			small = True
			continue
		while line.find('[cite]') > -1:
			before, link, after = splitBySqTag(line, 'cite')
			if link.find('/') < 0:
				if link in mapped:
					link = mapped[link]
				line = before + '~\\cite{' + link + '}' + after
			else:
				linkurl = link.split('/')[1]
				if linkurl in mapped:
					linkurl = mapped[linkurl]
				line = before + '~\\cite[' + link.split('/')[0] + ']{' + linkurl + '}' + after
		while line.find('[gwnet]') > -1:
			before, link, after = splitBySqTag(line, 'gwnet')
			if link.find('/') < 0:
				if link in mapped:
					link = mapped[link]
				line = before + '~\\cite{' + link + '}' + after
			else:
				linkurl = link.split('/')[1]
				if linkurl in mapped:
					linkurl = mapped[linkurl]
				line = before + '~\\cite[' + link.split('/')[0] + ']{' + linkurl + '}' + after
		while line.find('[dyol]') > -1:
			x = line.index('[dyol]')
			y = line.index('[/dyol]')
			link = line[x+6:y]
			if link in mapped:
				link = mapped[link]
			line = line[:x] + '~\\cite{' + link + '}' + line[y+7:]
		if line.find('[zoo]') > -1:
			x = line.index('[zoo]')
			y = line.index('[/zoo]')
			zoo = line[x+5:y].strip().split('|')
			if zoo[1][0] == '#':
				zoo[1] = '\\' + zoo[1]
			fnote = '\\footnote{{{0}, \\emph{{\\href{{http://slebok.github.io/zoo/{1}}}{{{2}}}}}, {3}~\cite{{Zoo2015}}.}}'.format(*zoo)
			if len(zoo) > 4:
				fnote = fnote[:-2] + ', ' + zoo[-1] + '.}'
			line = line[:x] + fnote + line[y+6:]
		# normalise
		line = line.replace('[smell]', '\\smell{').replace('[/smell]', '}')
		line = line.replace('[code]', '\\texttt{').replace('[/code]', '}')
		line = line.replace('[verb]', '\\verb!').replace('[/verb]', '!')
		line = line.replace('[emph]', '\\emph{').replace('[/emph]', '}')
		line = line.replace('[list]', '\\begin{itemize}').replace('[/list]', '\\end{itemize}')
		line = line.replace('[item]', '\\item ').replace('[/item]', '')
		line = line.replace(' ~', '~').replace(' \\footnote', '\\footnote')
		line = line.replace('}~\\cite{', ',')
		line = line.replace('&', '\\&').replace('%', '\\%')
		res.append(line)
	res2 = []
	empty = False
	for line in res:
		if not line.strip():
			if empty:
				continue
			else:
				empty = True
		else:
			empty = False
		res2.append(line)
	return ' '.join(res2).replace('\n \n', '\n\n').replace('\n\n\n', '\n\n').replace(' \\end{verbatim}', '\\end{verbatim}')

taxonomy = {}
explanation = {}
longdesc = {}
related = {}
latex = {}
taxkeys = {}
insides = {}
taxkeys[''] = []

cur1 = cur2 = cur3 = ''
readme0 = os.path.join(wdir, 'README.tax')
if not os.path.isfile(readme0):
	print('Fatal: cannot find the starting README!')
	sys.exit(-1)

insides[''] = []
f = open(readme0, 'r', encoding='utf-8')
lines = f.readlines()
for line in lines[1:]:
	if not line.strip():
		continue
	insides[''].append(line.strip().split(' ')[-1])
f.close()
for n1 in os.listdir(wdir):
	if os.path.isfile(os.path.join(wdir, n1)) or n1.startswith('.'):
		continue
	if n1 not in insides['']:
		insides[''].append(n1)
		print('\tWarning: 1 level {} included only implicitly!'.format(n1))
f = open(readme0, 'w', encoding='utf-8')
f.write(lines[0] + '\n')
for line in insides['']:
	f.write('* {}\n'.format(line))
f.close()
for n1 in insides['']:
	cur1 = n1.split('/')[-1]
	f1 = os.path.join(wdir, n1)
	readme1 = os.path.join(f1, 'README.tax')
	if not os.path.isfile(readme1):
		print('No readme at: ', cur1)
		continue
	print('Traverse ' + cur1)
	f = open(readme1, 'r', encoding='utf-8')
	lines = f.readlines()
	a, b = mysplit(lines[0])
	if a != cur1:
		print('\tWarning: {} vs {} mismatch on level 1!'.format(cur1, a))
	taxkeys[''].append(cur1)
	taxkeys[cur1] = []
	explanation[a] = b if b else '...'
	taxonomy[cur1] = {}
	insides[cur1] = []
	for line in lines[1:]:
		if not line.strip() or line.strip() == '*':
			continue
		# TODO change later?
		insides[cur1].append(line.strip().split(' ')[-1])
	f.close()
	for n2 in os.listdir(f1):
		if not os.path.isfile(os.path.join(f1, n2)) and n2 not in insides[cur1]:
			insides[cur1].append(n2)
			print('\tWarning: 2 level {} included only implicitly!')
	for cur2 in insides[cur1]:
		f2 = os.path.join(f1, cur2)
		readme2 = os.path.join(f2, 'README.tax')
		if not os.path.isfile(readme2):
			print('No readme at: ', cur2)
			continue
		print('Traverse ' + cur1 + ' \\ ' + cur2)
		if cur2 not in insides[cur1]:
			insides[cur1].append(cur2)
		insides[cur2] = []
		f = open(readme2, 'r', encoding='utf-8')
		lines = f.readlines()
		a, b = mysplit(lines[0])
		if a != cur2:
			print('\tWarning: {} vs {} mismatch on level 2!'.format(cur2, a))
		taxkeys[cur1].append(cur2)
		taxkeys[cur2] = []
		explanation[a] = b if b else '...'
		taxonomy[cur1][cur2] = []
		for line in lines[1:]:
			if not line.strip() or line.strip() == '*':
				continue
			# TODO change later?
			insides[cur2].append(line.strip().split(' ')[-1])
		f.close()
		for n3 in os.listdir(f2):
			if not os.path.isfile(os.path.join(f2, n3)) or not cur3.endswith('.tax') or cur3 == 'README.tax':
				continue
			if n3 not in insides[cur2]:
				insides[cur2].append(n3)
				print('\tWarning: 3 level {} included only implicitly!'.format(n3))
		for cur3 in insides[cur2]:
			f3 = os.path.join(f2, cur3 + '.tax')
			print('Traverse ' + cur1 + ' \\ ' + cur2 + ' \\ ' + cur3)
			if cur3 not in insides[cur2]:
				insides[cur2].append(cur3)
			f = open(f3, 'r', encoding='utf-8')
			lines = f.readlines()
			if len(lines) < 1:
				print('Empty file!')
			else:
				# process the first line
				a, b = mysplit(lines[0])
				if a != cur3:
					print('\tWarning: {} vs {} mismatch on level 3!'.format(cur3, a))
				cur3 = a
				taxkeys[cur2].append(cur3)
				taxonomy[cur1][cur2].append(cur3)
				longdesc[cur3] = ''
				related[cur3] = [line[9:].strip() for line in lines if line.startswith('Related: ')]
				explanation[a] = b if b else '...'
				midlines = [line for line in lines[1:] if not line.startswith('Related: ')]
				longdesc[cur3] = tax2dsl(midlines)
				latex[cur3] = tax2tex(midlines)
			f.close()
		# write references back
		f = open(readme2, 'w', encoding='utf-8')
		f.write('{}: {}\n\n'.format(cur2, explanation[cur2]))
		for line in insides[cur2]:
			f.write('* {}\n'.format(line))
		f.close()
	# write references back
	f = open(readme1, 'w', encoding='utf-8')
	f.write('{}: {}\n\n'.format(cur1, explanation[cur1]))
	for line in insides[cur1]:
		f.write('* {}\n'.format(line))
	f.close()
comment = '''
sys.exit(1)

f = open(wdir + 'all.tax', 'r', encoding='utf-8')
taxkeys[''] = []
for line in f.readlines():
	if line.strip()[0] == '%':
		continue
	if line.startswith('\t\t\t'):
		line = line.strip()
		if line.startswith('Related: '):
			related[cur3].append(line[9:].strip())
		elif line.startswith('@ '):
			lines = open(wdir + line[2:].strip(), 'r', encoding='utf-8').readlines()
			longdesc[cur3] = tax2dsl(lines)
			latex[cur3] = tax2tex(lines)
		else:
			longdesc[cur3] += tax2dsl([line])
			latex[cur3] = tax2tex([line])
	elif line.startswith('\t\t'):
		if line.strip().startswith('@ '):
			lines = open(wdir + line.strip()[2:].strip(), 'r', encoding='utf-8').readlines()
			# longdesc[cur3] = tax2dsl(lines)
			latex[cur2] = tax2tex(lines)
			continue
		a, b = mysplit(line)
		cur3 = a
		taxkeys[cur2].append(cur3)
		taxonomy[cur1][cur2].append(cur3)
		longdesc[cur3] = ''
		related[cur3] = []
		explanation[a] = b if b else '...'
	elif line.startswith('\t'):
		if line.strip().startswith('@ '):
			lines = open(wdir + line.strip()[2:].strip(), 'r', encoding='utf-8').readlines()
			latex[cur1] = tax2tex(lines)
			continue
		a, b = mysplit(line)
		cur2 = a
		taxkeys[cur1].append(cur2)
		taxkeys[cur2] = []
		explanation[a] = b if b else '...'
		taxonomy[cur1][cur2] = []
	else:
		a, b = mysplit(line)
		cur1 = a
		taxkeys[''].append(cur1)
		taxkeys[cur1] = []
		explanation[a] = b if b else '...'
		taxonomy[cur1] = {}
f.close()
'''
# keys = sorted(taxonomy.keys())

# generate the index
f = open('index.dsl', 'w', encoding='utf-8')
cx = sum([sum([len(taxonomy[key1][key2]) for key2 in taxonomy[key1]]) for key1 in taxkeys['']])
f.write(makeheader('', '{} smells total'.format(cx)))
f.write(makehr())
for key1 in taxkeys['']:
	f.write(makepic(key1.lower(), key1, explanation[key1], False))
f.write(makehr())
f.write(makefooter())
f.close()

# generate top levels
for key1 in taxkeys['']:
	f = open(key1.lower()+'.dsl', 'w', encoding='utf-8')
	cx = sum([len(taxonomy[key1][key2]) for key2 in taxonomy[key1]])
	f.write(makeheader('{} Smells'.format(key1), '{} in the selected group'.format(cx)))
	f.write(makehr())
	for key1e in taxkeys['']:
		f.write(makepic(key1e.lower(), key1e, explanation[key1e], key1e != key1))
	f.write(makehr())
	for key2 in taxkeys[key1]:
		f.write(makepic(key2.lower(), key2, explanation[key2], False))
	f.write(makehr())
	f.write(makefooter())
	f.close()

# generate second levels
for key1 in taxkeys['']:
	for key2 in taxkeys[key1]:
		f = open(key2.lower()+'.dsl', 'w', encoding='utf-8')
		cx = len(taxonomy[key1][key2])
		f.write(makeheader('{} Smells ({})'.format(key2, key1), '{} in the selected group'.format(cx)))
		f.write(makehr())
		for key1e in taxkeys['']:
			f.write(makepic(key1e.lower(), key1e, explanation[key1e], key1e != key1))
		f.write(makehr())
		for key2e in taxkeys[key1]:
			f.write(makepic(key2e.lower(), key2e, explanation[key2e], key2e != key2))
		f.write(makehr())
		for key3 in taxkeys[key2]:
			f.write(makepic(key3.lower(), key3, explanation[key3], False))
		f.write(makehr())
		f.write(makefooter())
		f.close()

# generate inner
for key1 in taxkeys['']:
	for key2 in taxkeys[key1]:
		for key3 in taxkeys[key2]:
			f = open(key3.lower()+'.dsl', 'w', encoding='utf-8')
			f.write(makeheader(key3, ''))
			f.write(makehr())
			for key1e in taxkeys['']:
				f.write(makepic(key1e.lower(), key1e, explanation[key1e], key1e != key1))
			f.write(makehr())
			for key2e in taxkeys[key1]:
				f.write(makepic(key2e.lower(), key2e, explanation[key2e], key2e != key2))
			f.write(makehr())
			for key3e in taxkeys[key2]:
				f.write(makepic(key3e.lower(), key3e, explanation[key3e], key3e != key3))
			f.write(makehr())
			s = longdesc[key3]
			if not s:
				s = '???'
			if key3 in related.keys() and related[key3]:
				s = 'Related smells: ' + ', '.join(\
					['<a href="http://tusharma.in/smells/{0}.html">{1}</a>'.format(*x.split('|'))
						for x in related[key3]]) + '<br/>' + s
			f.write(makelastpic(key3, s, key1, key2))
			f.write(makehr())
			f.write(makefooter())
			f.close()

# generate LaTeX
f = open('smells.tex', 'w', encoding='utf-8')
for key1 in taxkeys['']:
	f.write('\n\\section{{{0} Smells}}\\label{{{0}}}\n\n'.format(key1))
	if key1 in latex:
		f.write(latex[key1])
	for key2 in taxkeys[key1]:
		f.write('\n\\subsection{{{0} Smells}}\\label{{{0}}}\n\n'.format(key2))
		if key2 in latex:
			f.write(latex[key2])
		for key3 in taxkeys[key2]:
			f.write('\n\\subsubsection{{{0}}}\\label{{{0}}}\n\n'.format(key3))
			if key3 in latex:
				f.write(latex[key3])
			else:
				f.write('TODO\n')
f.close()
