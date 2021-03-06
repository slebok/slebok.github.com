<?xml version="1.0" encoding="UTF-8"?>
<path css="../www" img="../www"/>
<html doctype>
	<head viewport title="Preprocessor in the GraSs">
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
		<pic dwarf dim>
			<a>shortage.html</a>
			<name>Shortage</name>
			<small>incompleteness</small>
		</pic>
		<pic dwarf>
			<a>mixture.html</a>
			<name>Mixture</name>
			<small>spicing the grammar with alien fragments</small>
		</pic>
		<hr/>
		<pic dwarf dim>
			<a>badlayout.html</a>
			<name>BadLayout</name>
			<small>problems with whitespace and comments</small>
		</pic>
		<pic dwarf>
			<a>preprocessor.html</a>
			<name>Preprocessor</name>
			<small>combining parsing spec with preprocessor spec</small>
		</pic>
		<hr/>
			<h2>Preprocessor <span class="edit"><a href="https://github.com/slebok/grass/edit/master/Navigation/Mixture/Preprocessor.tax">Edit!</a></span></h2>
			<p></p><p> A preprocessor <a href="http://bibtex.github.io/ICSM-1996-Favre.html">[ICSM-1996-Favre]</a> is a curious thing: it is essentially, for all intents and purposes, a compiler that processes the input text, expands macros, connects additional textual sources, performs variant compilation and other similar activities. On the other hand, it is so common to use it before the “actual” compiler, that some studybooks regard it as a separate phase of compilation. Some language manuals contain production rules belonging to the preprocessor, and, since the preprocessor is a separate compiler with its own grammar, those should not be mixed with the rest of the main grammar.</p>
		<hr/>
		<div class="last">
			The GraSs taxonomy is a <a href="../ack.html">joint effort</a> maintained by <a href="http://grammarware.github.io/">Dr. Vadim Zaytsev</a> a.k.a. @<a href="http://grammarware.net/">grammarware</a>.
			Page last updated in #LASTMOD#.
			<valid/>
		</div>
	</body>
</html>
