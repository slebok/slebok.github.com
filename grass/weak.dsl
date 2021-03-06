<?xml version="1.0" encoding="UTF-8"?>
<path css="../www" img="../www"/>
<html doctype>
	<head viewport title="Weak in the GraSs">
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
		<pic dwarf dim>
			<a>throwaway.html</a>
			<name>Throwaway</name>
			<small>a nonterminal used only once</small>
		</pic>
		<pic dwarf>
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
			<h2>Weak <span class="edit"><a href="https://github.com/slebok/grass/edit/master/Structure/Proxy/Weak.tax">Edit!</a></span></h2>
			<p>Related smells: <a href="http://tusharma.in/smells/IA2.html">Incomplete Abstraction</a>, <a href="http://tusharma.in/smells/UA.html">Unnecessary Abstraction</a>, <a href="http://tusharma.in/smells/UAC.html">Unnecessary Abstraction</a>, <a href="http://tusharma.in/smells/DCA.html">Compound Attribute</a>, <a href="http://tusharma.in/smells/DMA.html">Multicolumn Attribute</a><br/></p><p> When the right hand side of a nonterminal is formed from several symbols that happen to occur one after another, without forming a proper abstraction, this can hinder grammar's understanding. The terminology is borrowed from <a href="https://doi.org/10.3115/981210.981223">[McCord1985]</a> which distinguished <em>strong</em> nonterminals (used during parsing and present in the resulting tree) from <em>weak</em> ones (used during parsing but flattened into single nodes in the tree). </p><p></p>
		<hr/>
		<div class="last">
			The GraSs taxonomy is a <a href="../ack.html">joint effort</a> maintained by <a href="http://grammarware.github.io/">Dr. Vadim Zaytsev</a> a.k.a. @<a href="http://grammarware.net/">grammarware</a>.
			Page last updated in #LASTMOD#.
			<valid/>
		</div>
	</body>
</html>
