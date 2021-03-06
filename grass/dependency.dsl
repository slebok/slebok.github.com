<?xml version="1.0" encoding="UTF-8"?>
<path css="../www" img="../www"/>
<html doctype>
	<head viewport title="Dependency Smells (Structure) in the GraSs">
	<body>
		<header/>
		<img src="../www/grass.200.png" style="width:100px;height:100px;" class="flr" />
		<h1><a href="index.html">GraSs</a>: A Taxonomy of Grammar Smells (6 in the selected group)</h1>
		<hr/>
		<pic dwarf dim>
			<a>organisation.html</a>
			<name>Organisation</name>
			<small>global problems</small>
		</pic>
		<pic dwarf dim>
			<a>navigation.html</a>
			<name>Navigation</name>
			<small>problems with navigating through the grammar</small>
		</pic>
		<pic dwarf>
			<a>structure.html</a>
			<name>Structure</name>
			<small>harmful relationships among grammar components</small>
		</pic>
		<hr/>
		<pic dwarf dim>
			<a>proxy.html</a>
			<name>Proxy</name>
			<small>indirect uses</small>
		</pic>
		<pic dwarf>
			<a>dependency.html</a>
			<name>Dependency</name>
			<small>antipatterns in use</small>
		</pic>
		<pic dwarf dim>
			<a>complexity.html</a>
			<name>Complexity</name>
			<small>metric-based smells</small>
		</pic>
		<hr/>
		<pic dwarf>
			<a>diamond.html</a>
			<name>Diamond</name>
			<small>A is X and B is X, but C is A or B</small>
		</pic>
		<pic dwarf>
			<a>rivalry.html</a>
			<name>Rivalry</name>
			<small>overlapping alternatives</small>
		</pic>
		<pic dwarf>
			<a>ouroboros.html</a>
			<name>Ouroboros</name>
			<small>a circular dependency among modules</small>
		</pic>
		<pic dwarf>
			<a>soulmates.html</a>
			<name>Soulmates</name>
			<small>nonterminals or modules are always changed together</small>
		</pic>
		<pic dwarf>
			<a>spillover.html</a>
			<name>Spillover</name>
			<small>a nonterminal that is too linked to the adjacent symbols</small>
		</pic>
		<pic dwarf>
			<a>mythic.html</a>
			<name>Mythic</name>
			<small>an alternative that is never exercised in the codebase</small>
		</pic>
		<hr/>
		<div class="last">
			The GraSs taxonomy is a <a href="../ack.html">joint effort</a> maintained by <a href="http://grammarware.github.io/">Dr. Vadim Zaytsev</a> a.k.a. @<a href="http://grammarware.net/">grammarware</a>.
			Page last updated in #LASTMOD#.
			<valid/>
		</div>
	</body>
</html>
