<?xml version="1.0" encoding="UTF-8"?>
<html doctype>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
		<meta name="viewport" content="initial-scale=1.0"/>
		<title>DYOL: Design Your Own Language — corpus — Parsing Techniques — Alexander Ollongren</title>
		<link href="../../www/common.css" rel="stylesheet" type="text/css" />
	</head>
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
			covers <a href="../cards.html#Concurrency">Concurrency</a> and <a href="../cards.html#Synchronisation">Synchronisation</a>, but surprisingly avoids
			the complexity of <a href="../cards.html#Parameter_Passing">Parameter Passing</a> discussion when formalising
			<a href="../cards.html#Subprograms">Subprograms</a>.
			Neither PT-AO nor <a href="PT-HU.html">PT-HU</a> mention <a href="../cards.html#Operator_Precedence">Operator Precedence</a> when talking
			about ambiguous grammars.
		</p>
		<p class="nb">NB: marking was done with the Russian translation of the book, so page numbers may be slightly different!</p>
		<h2>Marked:</h2>
<ul>
<li><a href="../cards.html#Alphabet">Alphabet</a>: page 34</li>
<li><a href="../cards.html#Assignment">Assignment</a>: page 206</li>
<li><a href="../cards.html#Branching">Branching</a>: page 173</li>
<li><a href="../cards.html#Collection">Collection</a>: page 142</li>
<li><a href="../cards.html#Concrete_Syntax">Concrete Syntax</a>: page 39</li>
<li><a href="../cards.html#Concurrency">Concurrency</a>: page 254</li>
<li><a href="../cards.html#Design_Chart/Diagram">Design Chart/Diagram</a>: page 43</li>
<li><a href="../cards.html#Iteration">Iteration</a>: page 171</li>
<li><a href="../cards.html#Module">Module</a>: page 161</li>
<li><a href="../cards.html#Runtime">Runtime</a>: page 203</li>
<li><a href="../cards.html#Static_Analysis">Static Analysis</a>: page 57</li>
<li><a href="../cards.html#Subprogram">Subprogram</a>: page 167</li>
<li><a href="../cards.html#Synchronisation">Synchronisation</a>: page 259</li>
<li><a href="../cards.html#Type_Analysis">Type Analysis</a>: page 98</li>
<li><a href="../cards.html#Type_Definition">Type Definition</a>: page 163</li>
<li><a href="../cards.html#Variable">Variable</a>: page 46</li>
</ul>
		<hr/>
		<div class="last">
			The DYOL toolkit was created and is maintained by <a href="http://grammarware.github.io/">Dr. Vadim Zaytsev</a> a.k.a. @<a href="http://grammarware.net/">grammarware</a>.
			Page last updated in #LASTMOD#.<br/>
			<a href="http://validator.w3.org/check/referer"><img src="../../www/xhtml.88.png" alt="XHTML 1.1" /></a>
			<a href="http://jigsaw.w3.org/css-validator/check/referer"><img src="../../www/css.88.png" alt="CSS 3" /></a>
		</div>
	</body>
</html>