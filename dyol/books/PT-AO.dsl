<path css="../../www" img="../../www"/>
<html doctype>
	<head title="DYOL: Design Your Own Language — corpus — Parsing Techniques — Alexander Ollongren"/>
	<body>
		<header/>
		<h1>
			<a href="http://amzn.to/2oSL1u0"><img src="PT-AO.jpg" alt="Alexander Ollongren's book"/></a>
			<abbr title="DYOL is pronounced like 'duel' in English">DYOL</abbr>:
			<a href="../index.html">Design Your Own Language</a>
		</h1>
		<h2><a href="index.html">Book sources</a> — <span class="b pt">Parsing Techniques</span> — Alexander Ollongren</h2>
		<p>A. Ollongren, <a href="http://amzn.to/2oSL1u0"><em>Definition of Programming Languages by Interpreting Automata</em></a>, Academic Press, 1974.</p>
		<pre>
@book{PT-AO,
	title     = "{Definition of Programming Languages by Interpreting Automata}",
	author    = "Alexander Ollongren",
	publisher = "Academic Press",
	isbn      = "978-0125257503",
	year      = 1974,
}
		</pre>
		<p>
			PT-AO is an ode to the <a href="https://en.wikipedia.org/wiki/Vienna_Development_Method">Vienna development method</a>, and is a side
			product of a project of modelling the semantics of PL/I in a formal way. It
			does not contain a lot of useful information on design, but the entire
			category of parsing books was included in our corpus to confirm that parsing
			in the narrow sense and language design are unrelated. This particular book is
			pretty realistic and mixes formal definitions with a selection of language
			constructs which a real world language designer may decide to use. It also
			covers <a class="mark" href="../cards/index.html#Concurrency">Concurrency</a> and <a class="mark" href="../cards/index.html#Synchronisation">Synchronisation</a>, but surprisingly avoids
			the complexity of <a class="mark" href="../cards/index.html#Parameter_Passing">Parameter Passing</a> discussion when formalising
			<a class="mark" href="../cards/index.html#Subprogram">Subprograms</a>.
			Neither PT-AO nor <a href="PT-HU.html">PT-HU</a> mention <a class="mark" href="../cards/index.html#Operator_Precedence">Operator Precedence</a> when talking
			about ambiguous grammars.
		</p>
		<p class="nb">NB: marking was done with the Russian translation of the book, so page numbers may be slightly different!</p>
		<pre>
@book{PT-AO-Russian,
	title     = "{Определение языков программирования интерпретирующими автоматами}",
	author    = "Александр Оллонгрен",
	series    = "{Математическое обеспечение ЭВМ}",
	publisher = "Мир",
	year      = 1977,
}
		</pre>
		<h2>Marked:</h2>
<ul>
<li><a class="mark" href="../cards/index.html#Alphabet">Alphabet</a>: page 34</li>
<li><a class="mark" href="../cards/index.html#Assignment">Assignment</a>: page 206</li>
<li><a class="mark" href="../cards/index.html#Branching">Branching</a>: page 173</li>
<li><a class="mark" href="../cards/index.html#Collection">Collection</a>: page 142</li>
<li><a class="mark" href="../cards/index.html#Concrete_Syntax">Concrete Syntax</a>: page 39</li>
<li><a class="mark" href="../cards/index.html#Concurrency">Concurrency</a>: page 254</li>
<li><a class="mark" href="../cards/index.html#Design_ChartDiagram">Design Chart/Diagram</a>: page 43</li>
<li><a class="mark" href="../cards/index.html#Iteration">Iteration</a>: page 171</li>
<li><a class="mark" href="../cards/index.html#Module">Module</a>: page 161</li>
<li><a class="mark" href="../cards/index.html#Runtime">Runtime</a>: page 203</li>
<li><a class="mark" href="../cards/index.html#Static_Analysis">Static Analysis</a>: page 57</li>
<li><a class="mark" href="../cards/index.html#Subprogram">Subprogram</a>: page 167</li>
<li><a class="mark" href="../cards/index.html#Synchronisation">Synchronisation</a>: page 259</li>
<li><a class="mark" href="../cards/index.html#Type_Analysis">Type Analysis</a>: page 98</li>
<li><a class="mark" href="../cards/index.html#Type_Definition">Type Definition</a>: page 163</li>
<li><a class="mark" href="../cards/index.html#Variable">Variable</a>: page 46</li>
</ul>
		<hr/>
		<div class="last">
			The DYOL toolkit was created and is maintained by <a href="http://grammarware.github.io/">Dr. Vadim Zaytsev</a> a.k.a. @<a href="http://grammarware.net/">grammarware</a>.
			Page last updated in #LASTMOD#.
			<valid/>
		</div>
	</body>
</html>
