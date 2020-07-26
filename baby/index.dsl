<?xml version="1.0" encoding="UTF-8"?>
<path css="../www" img="../www"/>
<html doctype>
	<head viewport title="BabyCOBOL">
	<body>
		<header/>
		<link href="../www/babycobol.css" rel="stylesheet" type="text/css" />
		<img src="../www/babycobol.png" style="width:200px;height:200px;" class="flr" />
		<h1><span class="ff lang"><a href="index.html">BabyCOBOL</a></span>: The Language Reference</h1>
		BabyCOBOL is a project in language design aimed at creating a language that is, on one hand, small enough to be quickly implementable (fully or partially) within any framework that can support its features, and, on the other hand, complex enough to cover typical problems of legacy language processing. If you learn how to compile <a href="http://www.cs.tufts.edu/~sguyer/classes/comp181-2006/minijava.html">MiniJava</a>, you stand a good chance of implementing a reasonably good compiler for any contemporary programming language. If you show how your language extension works on <a href="https://doi.org/10.1145/503502.503505">Featherweight Java</a>, it has a good chance of being applicable to any reasonable modern object-oriented programming language. If you can handle <a href="http://slebok.github.io/baby/">BabyCOBOL</a> with your tool, you are ready to face the challenges of software modernisation, codebase migration and legacy language processing in general. At this day and age, being future proof means being able to handle software of the past.<hr/>
		<h2>Statements:</h2>
		<span class="ff used"><a href="accept.html" title="read user input and store it in variables">ACCEPT</a></span> <span class="ff used"><a href="add.html" title="add two or more values together">ADD</a></span> <span class="ff used"><a href="alter.html" title="change the target of a GO TO statement">ALTER</a></span> <span class="ff used"><a href="copy.html" title="insert contents from a different file">COPY</a></span> <span class="ff used"><a href="display.html" title="display text on the terminal">DISPLAY</a></span> <span class="ff used"><a href="divide.html" title="divide a numeric value by other numbers">DIVIDE</a></span> <span class="ff used"><a href="evaluate.html" title="branch to multiple locations based on several conditions">EVALUATE</a></span> <span class="ff used"><a href="goto.html" title="branch unconditionally within a program">GO TO</a></span> <span class="ff used"><a href="if.html" title="branch conditionally within a program">IF</a></span> <span class="ff used"><a href="loop.html" title="structural execution of a sequence of commands">LOOP</a></span> <span class="ff used"><a href="move.html" title="partial structural assignment">MOVE</a></span> <span class="ff used"><a href="multiply.html" title="multiply two or more numeric values">MULTIPLY</a></span> <span class="ff used"><a href="nextsentence.html" title="branch unconditionally to the beginning of the next sentence">NEXT SENTENCE</a></span> <span class="ff used"><a href="perform.html" title="call a paragraph or section within the program">PERFORM</a></span> <span class="ff used"><a href="signal.html" title="specify an error handler">SIGNAL</a></span> <span class="ff used"><a href="stop.html" title="terminate the program">STOP</a></span> <span class="ff used"><a href="subtract.html" title="subtract one or more numeric values from another value">SUBTRACT</a></span> 
<h2>Origins</h2>
<span class="ff lang"><a href="clist.html">CLIST</a></span>&nbsp;&nbsp;&nbsp;<span class="ff lang"><a href="cobol.html">COBOL</a></span>&nbsp;&nbsp;&nbsp;<span class="ff lang"><a href="fortran.html">FORTRAN</a></span>&nbsp;&nbsp;&nbsp;<span class="ff lang"><a href="pli.html">PL/I</a></span>&nbsp;&nbsp;&nbsp;<span class="ff lang"><a href="rexx.html">REXX</a></span>&nbsp;&nbsp;&nbsp;<span class="ff lang"><a href="rpg.html">RPG</a></span>&nbsp;&nbsp;&nbsp;
<h2>Academic mentions</h2>
<ul><li>Bernd Fischer, <em>Breaking Parsers: Mutation-based Generation of Programs with Guaranteed Syntax Errors</em>, IFIP TC-2 WG 2.11 on <a href="https://wiki.hh.se/wg211/index.php/WG211/M20Schedule">Program Generation</a>, invited presentation, Sorbonne Université, 20 February 2020 (first implementation of BabyCOBOL in Prolog capable of generating hundreds of BabyCOBOL programs)</li>
<li>Vadim Zaytsev, <em>BabyCOBOL: The Challenge to Program Generation Tool Developers</em>, IFIP TC-2 WG 2.11 on <a href="https://wiki.hh.se/wg211/index.php/WG211/M20Zaytsev">Program Generation</a>, invited presentation, Sorbonne Université, 17 February 2020</li>
<li>Vadim Zaytsev, <em>Legacy and Software Renovation</em>, <a href="https://datanose.nl/#course[77550]">Software Evolution</a> guest lecture, Universiteit van Amsterdam, 9 December 2019</li>
<li>Vadim Zaytsev, <em>Blind Men and a Room Full of Elephants</em>, <a href="http://soft.vub.ac.be/benevol2019/#secondKeynote">BENEVOL 2019</a> keynote, Vrije Universiteit Brussel (VUB), 28 November 2019</li>
</ul>
		<hr/>
		<div class="last">
			BabyCOBOL is a project by <a href="http://grammarware.github.io/">Dr. Vadim Zaytsev</a> a.k.a. @<a href="http://grammarware.net/">grammarware</a>.
			Page last updated in #LASTMOD#.
			<valid/>
		</div>
	</body>
</html>