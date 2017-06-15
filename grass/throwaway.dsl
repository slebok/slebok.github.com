<?xml version="1.0" encoding="UTF-8"?>
<path css="../www" img="../www"/>
<html doctype>
	<head viewport title="Throwaway in the GraSs">
	<body>
		<header/>
		<h1><a href="index.html">GraSs</a>: A Taxonomy of Grammar Smells</h1>
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
		<pic dwarf>
			<a>proxy.html</a>
			<name>Proxy</name>
			<small>indirect uses</small>
		</pic>
		<pic dwarf dim>
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
		<pic dwarf dim>
			<a>chain.html</a>
			<name>Chain</name>
			<small>right hand side is a nonterminal</small>
		</pic>
		<pic dwarf>
			<a>throwaway.html</a>
			<name>Throwaway</name>
			<small>a nonterminal used only once</small>
		</pic>
		<pic dwarf dim>
			<a>weak.html</a>
			<name>Weak</name>
			<small>a nonterminal does not form a proper abstraction</small>
		</pic>
		<pic dwarf dim>
			<a>ghost.html</a>
			<name>Ghost</name>
			<small>a subexpression that should have been a nonterminal</small>
		</pic>
		<pic dwarf dim>
			<a>multitool.html</a>
			<name>Multitool</name>
			<small>a nonterminal that represents two or more concepts</small>
		</pic>
		<hr/>
		<pic wide>
			<name>Throwaway</name>
			<small>Related smells: <a href="http://tusharma.in/smells/LIH.html">List-like Inheritance Hierarchy</a>, <a href="http://tusharma.in/smells/POL.html">Poltergeist</a>, <a href="http://tusharma.in/smells/IA.html">Imperative Abstraction</a>, <a href="http://tusharma.in/smells/TDG.html">Tree-like Dependency Graph</a><br/>A nonterminal that is used only once, may be useful to tame the length of production rules (see [smell]TooWide[/smell]), and may occasionally convey a useful abstraction with its name, but beyond those circumstances it is a smell and should be a candidate for refactoring.</small>
		</pic>
		<hr/>
		<div class="last">
			The GraSs taxonomy was created and is maintained by <a href="http://grammarware.github.io/">Dr. Vadim Zaytsev</a> a.k.a. @<a href="http://grammarware.net/">grammarware</a>.
			Page last updated in #LASTMOD#.
			<valid/>
		</div>
	</body>
</html>
