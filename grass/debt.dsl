<?xml version="1.0" encoding="UTF-8"?>
<path css="../www" img="../www"/>
<html doctype>
	<head viewport title="Debt in the GraSs">
	<body>
		<header/>
		<h1><a href="index.html">GraSs</a>: A Taxonomy of Grammar Smells</h1>
		<hr/>
		<pic dwarf dim>
			<a>organisation.html</a>
			<name>Organisation</name>
			<small>global problems</small>
		</pic>
		<pic dwarf>
			<a>navigation.html</a>
			<name>Navigation</name>
			<small>problems with navigating through the grammar</small>
		</pic>
		<pic dwarf dim>
			<a>structure.html</a>
			<name>Structure</name>
			<small>harmful relationships among grammar components</small>
		</pic>
		<hr/>
		<pic dwarf dim>
			<a>spaghetti.html</a>
			<name>Spaghetti</name>
			<small>scattering details over the grammar</small>
		</pic>
		<pic dwarf>
			<a>shortage.html</a>
			<name>Shortage</name>
			<small>incompleteness</small>
		</pic>
		<pic dwarf dim>
			<a>mixture.html</a>
			<name>Mixture</name>
			<small>spicing the grammar with alien fragments</small>
		</pic>
		<hr/>
		<pic dwarf dim>
			<a>almostalphabet.html</a>
			<name>AlmostAlphabet</name>
			<small>seemingly incomplete collections</small>
		</pic>
		<pic dwarf dim>
			<a>confusingentry.html</a>
			<name>ConfusingEntry</name>
			<small>no starting symbol</small>
		</pic>
		<pic dwarf dim>
			<a>dead.html</a>
			<name>Dead</name>
			<small>nonterminal defined, but not referenced</small>
		</pic>
		<pic dwarf dim>
			<a>bottom.html</a>
			<name>Bottom</name>
			<small>nonterminal referenced, but not defined</small>
		</pic>
		<pic dwarf>
			<a>debt.html</a>
			<name>Debt</name>
			<small>incompletenesses covered up by todo/fixme comments</small>
		</pic>
		<hr/>
		<pic wide>
			<name>Debt</name>
			<small>Related smells: <a href="http://tusharma.in/smells/IT.html">Incomplete Tasks</a><br/>Similarly to [smell]Chant[/smell] that covers up imperfect fragments with comments in natural language, there could be pieces missing entirely from the grammar and replaced with comments. If the comments admit clearly what is missing, use searchable tags like “TODO” or “FIXME” and are intended to use as a backlog, the current practice is to refer to them as “self-admitted technical debt” <a href="http://bibtex.github.io/ICSME-2014-PotdarS.html">[ICSME-2014-PotdarS]</a>.</small>
		</pic>
		<hr/>
		<div class="last">
			The GraSs taxonomy was created and is maintained by <a href="http://grammarware.github.io/">Dr. Vadim Zaytsev</a> a.k.a. @<a href="http://grammarware.net/">grammarware</a>.
			Page last updated in #LASTMOD#.
			<valid/>
		</div>
	</body>
</html>