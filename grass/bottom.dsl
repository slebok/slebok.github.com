<?xml version="1.0" encoding="UTF-8"?>
<path css="../www" img="../www"/>
<html doctype>
	<head viewport title="Bottom in the GraSs">
	<body>
		<header/>
		<img src="../www/grass.200.png" style="width:100px;height:100px;" class="flr" />
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
		<pic dwarf>
			<a>bottom.html</a>
			<name>Bottom</name>
			<small>nonterminal referenced, but not defined</small>
		</pic>
		<pic dwarf dim>
			<a>debt.html</a>
			<name>Debt</name>
			<small>incompletenesses covered up by todo/fixme comments</small>
		</pic>
		<hr/>
			<h2>Bottom <span class="edit"><a href="https://github.com/slebok/grass/edit/master/Navigation/Shortage/Bottom.tax">Edit!</a></span></h2>
			<p></p><p> </p><p> The lack of definition for nonterminals that are used within the grammar, is an obvious mistake that must be reported one way or another, and also possibly as a smell. There are three main reasons for undefined nonterminals: (1) they were forgotten by the grammar engineer; (2) they are defined in a different module; (3) they are defined on a separate conceptual layer. For scenario (1), we cannot do anything to fix the problem automatically (beyond attempting heuristics).</p>
		<hr/>
		<div class="last">
			The GraSs taxonomy is a <a href="../ack.html">joint effort</a> maintained by <a href="http://grammarware.github.io/">Dr. Vadim Zaytsev</a> a.k.a. @<a href="http://grammarware.net/">grammarware</a>.
			Page last updated in #LASTMOD#.
			<valid/>
		</div>
	</body>
</html>
