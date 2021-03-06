<?xml version="1.0" encoding="UTF-8"?>
<path css="../www" img="../www"/>
<html doctype>
	<head viewport title="Dead in the GraSs">
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
		<pic dwarf>
			<a>dead.html</a>
			<name>Dead</name>
			<small>nonterminal defined, but not referenced</small>
		</pic>
		<pic dwarf dim>
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
			<h2>Dead <span class="edit"><a href="https://github.com/slebok/grass/edit/master/Navigation/Shortage/Dead.tax">Edit!</a></span></h2>
			<p>Related smells: <a href="http://tusharma.in/smells/UP.html">Unused Packages</a>, <a href="http://tusharma.in/smells/LF.html">Lava Flow</a>, <a href="http://tusharma.in/smells/OC.html">Obsolete Classes</a>, <a href="http://tusharma.in/smells/UA2.html">Unutilized Abstraction</a>, <a href="http://tusharma.in/smells/EDLS.html">Dead Local Store</a>, <a href="http://tusharma.in/smells/DF.html">Dead Fields</a><br/></p><p> All top (unused) nonterminals that were identified as not being the starting symbol(s) of the grammar, represent unreachable fragments. The programming counterpart of this smell is dead code and its variants. </p><p></p>
		<hr/>
		<div class="last">
			The GraSs taxonomy is a <a href="../ack.html">joint effort</a> maintained by <a href="http://grammarware.github.io/">Dr. Vadim Zaytsev</a> a.k.a. @<a href="http://grammarware.net/">grammarware</a>.
			Page last updated in #LASTMOD#.
			<valid/>
		</div>
	</body>
</html>
