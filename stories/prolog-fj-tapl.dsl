<?xml version="1.0" encoding="UTF-8"?>
<path css="../www" img="../www"/>
<html doctype>
	<head viewport title="SLEBOK: Software Language Engineering Body of Knowledge -  A Prological Reconstruction of Featherweight Java from TAPL">
	<body>
		<div style="text-align:center;"><a href="http://slebok.github.io">Software Language Engineering Body of Knowledge</a></div>
		<hr/>
		<div class="flr edit">
			<a href="https://github.com/slebok/slebok/edit/master/stories/prolog-fj-tapl/main.md">Edit @ the SLEBoK repo</a>
		</div><h1>A Prological Reconstruction of Featherweight Java from TAPL</h1>
<p>This is the story of how I naively reconstructed a parser, evaluator and type checker for Featherweight Java (FJ) from Benjamin Pierce's book %LINKME:"Types and Programming Languages" (TAPL), Sect. 19, in %LINKME:Prolog (<a href="http://www.swi-prolog.org/pldoc/man?predicate=select/4">SWI-Prolog</a>, to be precise). The insights of this story, if any, come from observing</p>
<ol>
<li>how the implementation reconstructs the semantics of the book's figures' specifying syntax and semantics of FJ, and </li>
<li>how and why the implementation differs from the specifications.</li>
</ol>
<p>The work was partly motivated by Guy Steele's talk <a href="https://www.youtube.com/watch?v=dCuZkaaou0Q">"It’s Time for a New Old Language"</a>.</p>
<h2>Syntax and Parser</h2>
<h3>Original Syntax Specification</h3>
<p>The syntax of FJ is given in TAPL, Fig. 19-1, left:</p>
<pre><code>CL ::= class C extends C {<span class="over">C</span> <span class="over">f</span>; K <span class="over">M</span>}

K  ::= C(<span class="over">C</span> <span class="over">f</span>) {super(<span class="over">f</span>); this.<span class="over">f</span>=<span class="over">f</span>;}

M  ::= C m(<span class="over">C</span> <span class="over">x</span>) {return t;}

t  ::= x
     | t.f
     | t.m(<span class="over">t</span>)
     | new C(<span class="over">t</span>)
     | (C) t

v  ::= new C(<span class="over">v</span>)
</code></pre>
<p>Note that the grammar uses nonterminals, or <em>metavariables</em>, that have no rules (namely <em>C</em>, <em>f</em>, and <em>m</em>); they expand to (or represent) identifiers (of classes, fields, and methods, resp.).</p>
<p>Here is a number of findings:</p>
<ol>
<li>The overline notation replaces for the %LINKME:Kleene star found in other grammar specification languages, subject to conventions that, were they not detailed in the accompanying text, would need to be reconstructed from a more precise syntax specification of Java. That is, the grammar as is can only be interpreted using extra knowledge; alone it is insufficient to drive a parser.</li>
<li>Multiple occurrences of the same metavariable in the same rule may expand to different terminals. For instance, the two occurrences of <em>C</em> in "class <em>C</em> extends <em>C</em>" may expand to (and represent) different class names. (In Fig. 19-1, metavariables are like nonterminals in this respect.)</li>
<li>The grammar for terms is left recursive; also, the left associativity of member access requires attention.</li>
<li>The term sublanguage does not introduce parentheses, even though these are required for member access on cast expressions.</li>
<li>Fig. 19-1 really specifies two grammars, one for programs (including terms) and one for values. The language of values is a sublanguage of the language of terms in the sense that all values are also terms syntactically.</li>
</ol>
<p>All findings are justified by the primary use of the grammar: providing an inductive definition of the language (or, rather, its syntax trees) suited to serve the evaluation and typing rules.</p>
<h3>Syntax and Parser in Prolog</h3>
<p>A grammar that is also suitable for parsing is reconstructed as a Definite Clause Grammar (DCG) in Prolog as follows:</p>
<pre><code class="lang-prolog">&#39;P&#39;(program(P)) → repeating(&#39;CL&#39;(P)).
</code></pre>
<p>This (start) rule is implicit in TAPL. The (non-ground) term <code>program(P)</code> that is an argument to the start nonterminal <code>'P'</code> (quoted because in Prolog, unquoted identifiers starting with a capital letter are interpreted as variables) serves the construction of the syntax tree; the (root) node is a term of type <code>program</code>. (Unfortunately, Prolog is untyped and SWI-Prolog has no way of declaring structs.) <code>repeating</code> is a meta-predicate that implements the Kleene star for its argument, a nonterminal. In the above rule, it effects to <code>P</code> being unified with a list of nodes representing class definitions (possibly empty).</p>
<pre><code class="lang-prolog">&#39;CL&#39;(class(C, D, F, K, M)) →
    keyword(&quot;class&quot;),
    identifier(C), % class name
    keyword(&quot;extends&quot;),
    identifier(D), % superclass name; &#39;C&#39; in the original grammar!
    symbol(&quot;{&quot;),
    repeating(&#39;F&#39;(F)), % field declarations
    &#39;K&#39;(K), % constructor
    repeating(&#39;M&#39;(M)), % method definitions
    symbol(&quot;}&quot;).

&#39;F&#39;(field(C, F)) →
    identifier(C), % name of field type
    identifier(F), % field name
    symbol(&quot;;&quot;).
</code></pre>
<p>The metavariable <em>C</em> from the original grammar (where it represents class names) translates to a logic variable. Deviating from what the original grammar seems to suggest, different logic variables <code>C</code> and <code>D</code> are introduced for the two occurrences of <em>C</em> in the original grammar. This is necessary because unlike for a metavariable in the syntax specification, multiple occurrences of a logic variable in the same rule express equality of whatever gets substituted for them. The rule <em>'CL'</em> also introduces a new non-terminal <code>'F'</code>, which is required so as to be able to use the metapredicate <code>repeating</code> for accepting sequences of field declarations.</p>
<pre><code class="lang-prolog">&#39;K&#39;(constructor(C, X, SF, TF)) →
    identifier(C), % name of class
    symbol(&quot;(&quot;),
    repeating(variable(X), &quot;,&quot;), % formals (&quot;variables&quot;)
    symbol(&quot;)&quot;),
    symbol(&quot;{&quot;),
    keyword(&quot;super&quot;),
    symbol(&quot;(&quot;),
    repeating(identifier(SF), &quot;,&quot;), % actuals (super fields)
    symbol(&quot;)&quot;),
    symbol(&quot;;&quot;),
    repeating(init(TF)), % initialization
    symbol(&quot;}&quot;).

init(init(F, X)) →
    identifier(&quot;this&quot;), % &quot;this&quot; is a variable, not a keyword
    symbol(&quot;.&quot;),
    identifier(F), % field name
    symbol(&quot;=&quot;),
    identifier(X), % var name
    keyword(&quot;;&quot;).
</code></pre>
<p>The rule for constructors (<code>'K'</code>) uses a variant of <code>repeating</code> specifying a separator. The new nonterminal <code>init</code> was introduced for the same reason as <code>'F'</code> above; note that, unlike the original grammar, it binds to the variable <code>TF</code> a list of pairs (where the original grammar binds a pair of lists to two metavariables <em>f</em> overlined).</p>
<pre><code class="lang-prolog">&#39;M&#39;(method(C, M, X, T)) →
    identifier(C), % name of return type
    identifier(M), % method name
    symbol(&quot;(&quot;),
    repeating(variable(X), &quot;,&quot;), % formals (&quot;variables&quot;)
    symbol(&quot;)&quot;),
    symbol(&quot;{&quot;),
    keyword(&quot;return&quot;),
    &#39;t&#39;(T), % term
    symbol(&quot;;&quot;),
    symbol(&quot;}&quot;).

variable(variable(C, X)) →
    identifier(C), % name of type
    identifier(X). % variable name
</code></pre>
<p>Again, a new nonterminal <code>variable</code> was introduced for the purpose of handling repetition.</p>
<pre><code class="lang-prolog">t(cast(C, T)) → % cast
    symbol(&quot;(&quot;),
    identifier(C), % name of target type
    symbol(&quot;)&quot;),
    t(T).
t(T) →     % expanded to cater for left recursion
    e(E),    % and left associativity of member access
    m(E, T).
t(T) →     % cater for parenthesized receivers (not in original FJ syntax)
    symbol(&quot;(&quot;),
    t(E),
    symbol(&quot;)&quot;),
    m(E, T).

e(varaccess(X)) → % variable
    identifier(X).
e(new(C, A)) → % object creation
    keyword(&quot;new&quot;),
    identifier(C),
    symbol(&quot;(&quot;),
    repeating(t(A), &quot;,&quot;),
    symbol(&quot;)&quot;).

% member access terms
m(T, T) → % no member access
    empty.
m(R, T) → % field access
    symbol(&quot;.&quot;),
    identifier(F),
    m(faccess(R, F), T).
m(R, T) → % method invocation
    symbol(&quot;.&quot;),
    identifier(M),
    symbol(&quot;(&quot;),
    repeating(t(A), &quot;,&quot;),
    symbol(&quot;)&quot;),
    m(minvoc(R, M, A), T).
</code></pre>
<p>The grammar rule for terms required more elaborate reworking, to account for left recursion (removed by introducing <code>e</code>, for elementary terms), the left associativity of member access (catered for by spending a second argument on <code>m</code> (where the first builds up a possible chain of member accesses and the second returns it at the end of the chain). Also, I fitted in the parentheses for member access on cast expressions; @Vadim%CHECKME:I am not sure how this accounts for the parentheses used in the evaluation rules of TAPL.</p>
<p>Note that the parser uses backtracking, and that the grammar is unambiguous.</p>
<pre><code class="lang-prolog">v(new(C, Vs)) →
    keyword(&quot;new&quot;),
    [C], % identifier(C) does not work in string generation mode
    symbol(&quot;(&quot;),
    repeating(v(Vs), &quot;,&quot;),
    symbol(&quot;)&quot;).
</code></pre>
<p>The rule for values is not used for parsing values (recall that the syntax of values is covered by the syntax of terms), but for checking whether a term is a value (@Ralf%CHECKME: are terms and values not from different domains? the syntactic and the semantic domain?). This will be done by generating (or attempting to generate) a string from the syntax tree (which, in Prolog, is done by invoking the grammar with a ground parse tree and a variable sentence).</p>
<h3>Summary</h3>
<p>The primary purpose of the grammar as provided by Fig. 19-1 of TAPL is to hint at a specification of an abstract syntax of FJ, on which the specifications of Figs. 19-2 through 4 rely. The above DCG makes this specification explicit, by defining the term structures (in the arguments of the rule heads) from which syntax trees are constructed. The occurrences of the metavariables representing identifiers in Fig. 19-1 (not the metavariables themselves) translate to logic variables in the DCG rules, which serve to insert the accepted identifiers literally in the syntax tree; all other (occurrences of) metavariables of Fig. 19-1 translate to nonterminals of the DCG (Prolog goals and subgoals).</p>
<h2>Extracting the Subtype Relation</h2>
<p>The subtype relation defined by an FJ program is specified by its <code>extends</code> clauses, plus the fact that <code>Object</code> is the root of the hierarchy (it does not have a supertype).</p>
<h3>Original Rules</h3>
<p>The subtype relation is extracted from a program using the rules given in TAPL, Fig. 19-1, right. My observations:</p>
<ol>
<li>The first rule, a fact (or axiom), states reflexivity of the subtype relation. It uses a metavariable <em>C</em> that is not linked to a concrete program. Differing from the syntax specification in Fig.19-1, left, here the two occurrences of <em>C</em> stand for the same identifier (class name).</li>
<li>The second rule states transitivity of the subtype relation. The metavariables <em>C</em>, <em>D</em>, and <em>E</em> stand for different class names in the general case; it is unclear whether the rule covers the cases that two or all three are the same.</li>
<li>The third rule relates the subtype relation to a program. Again, it is unclear whether <em>C</em> and <em>D</em> stand for strictly different class names.</li>
<li>There is no rule stating the antisymmetry required for a subtype relation.</li>
</ol>
<h3>Implementation in Prolog</h3>
<p>The original subtype rules of Fig. 19-1 are not immediately accommodated by Prolog's operational semantics. Here is an amalgamation of the three rules into two:</p>
<pre><code class="lang-prolog">subtype(C, C, _) :- !.
subtype(C, D, P) :-
    P = program(CL),
    memberchk(class(C, E, _, _, _), CL), !,
    subtype(E, D, P).
</code></pre>
<p>@{Ralf, Vadim}%CHECKME: Any idea how to make Prolog reflect the original specification more directly?</p>
<p>Note that the logic variables <code>C</code>, <code>D</code>, and <code>E</code> may be instantiated with the same class name.</p>
<pre><code class="lang-prolog">subtype([], [], _).
subtype([C|Cs], [D|Ds], P) :-
    subtype(C, D, P),
    subtype(Cs, Ds, P).
</code></pre>
<p>%CHECKME: the extension to lists of types (required where?) needs to be made explicit.</p>
<p>Note that the proof of subtype(C, D, P) may recur infinitely if the subtype relation is circular and hence not antisymmetric.</p>
<h2>Evaluation</h2>
<h3>Original Evaluation Rules</h3>
<p>The evaluation rules of FJ are given in TAPL, Fig. 19-3:</p>
<p><img src="TAPL%20Fig.%2019-3.png" alt="TAPL Fig. 19-3" title="Evaluation" /></p>
<p>They make use of the auxiliary definitions provided by Fig. 19-2 (which are also used by the typing rules; see below):</p>
<p><img src="TAPL%20Fig.%2019-2.png" alt="TAPL Fig. 19-3" title="Auxiliary" /></p>
<p>The evaluation rules adhere to a small-step style, meaning that they are repeatedly applied until a value is produced or evaluation gets stuck.</p>
<p>Again, there are some observations to be made:</p>
<ol>
<li>Unlike for the syntax specification, multiple occurrences of the same metavariable in the same rule represent the same (meta)term. @Ralf%CHECKME: other word for metaterm? Note that "term" is ambiguous here, since TAPL uses it for expressions.</li>
<li>The metavariables denoted by <em>t</em> overline etc. are implicitly indexed with indices ranging from 1 to <em>n</em>; the use of the same index <em>i</em> means that metavariables are selected from the same position of the corresponding sequences. Note that this presupposes that the sequences are of the same length, which may, but need not be, guaranteed by the syntax rules of FJ (it is only guaranteed where to sequences are accepted as a list of pairs).</li>
<li>The rules and their order specify the evaluation order of subterms. For instance, for a term <em>t</em> = <em>t</em>_0.<em>m</em>(<em>t</em>_1, <em>t</em>_2), the evaluation order of the subterms <em>t</em>_0 through <em>t</em>_2 is from left to right. </li>
</ol>
<h2>Translation of Evaluation Rules to Prolog</h2>
<p>The evaluation loop is implemented by the Prolog clause</p>
<pre><code class="lang-prolog">eval(T, T, _) :- is_val(T), !. % term is ground -&gt; the term is the value!
eval(T, V, P) :-
    step(T, Tp, P),
    eval(Tp, V, P).
</code></pre>
<p>where <code>is_val(T)</code> calls <a href="http://www.swi-prolog.org/pldoc/doc_for?object=phrase/2"><code>phrase(v(T), _)</code></a> either directly or lifts it over the members of <code>T</code> if <code>T</code> is a list, to check that the term <code>T</code> represents a value (@Ralf%CHECKME: Do we not have a metatyping problem here? Is T not <em>either</em> a term <em>or</em> a value?). The third argument <code>P</code> of <code>eval</code> holds the program in whose context the term <code>T</code> is evaluated to the value <code>V</code>.  Note that the evaluation loop terminates successfully when the input term has been reduced to a value, and fails when it reaches a term that is not a value and cannot be reduced by a next step.</p>
<p>The evaluation rules themselves are implemented as follows.</p>
<pre><code class="lang-prolog">% E-ProjNew
step(faccess(new(C, Vs), F_i), V_i, P) :-
    is_val(Vs), !,
    fields(C, P, Fs),
    nth0(I, Fs, field(_, F_i)),
    nth0(I, Vs, V_i).
</code></pre>
<p>Here, the head of the rule makes sure that it can only be applied to field accesses on constructor invocations, while the first subgoal makes sure that the arguments to the constructor invocation, <code>Vs</code>, is indeed a list of values, which is another precondition to rule application. The repeated invocation of <a href="http://www.swi-prolog.org/pldoc/man?predicate=nth0/3"><code>nth0</code></a> selects from <code>Vs</code>, the list of values passed to the constructor of <code>C</code>, the one assigned to the field named <code>F_i</code> (where correspondence is via position <code>I</code>). <code>fields</code> is the auxiliary function defined in TAPL Fig. 19-2 (see above); note that it depends of the program <code>P</code> (which is always implicit in TAPL).</p>
<pre><code class="lang-prolo">% E-InvkNew
step(minvoc(new(C, Vs), M, Us), V, P) :-
    is_val(Vs), is_val(Us), !,
    mbody(M, C, P, (Xs, T_0)),
    substitute([this|Xs], [new(C, Vs)|Us], T_0, V).
</code></pre>
<p>Here,  <code>mbody</code>is the auxiliary function defined in TAPL Fig. 19-2 and <code>substitute</code> is another auxiliary predicate.</p>
<pre><code>% E-CastNew
step(cast(D, new(C, Vs)), new(C, Vs), P) :-
    is_val(Vs), !,
    subtype(C, D, P).

% E-Field
step(faccess(T_0, F), faccess(Tp_0, F), P) :-
    \+ is_val(T_0), !,
    eval(T_0, Tp_0, P).

% E-Invk-Recv
step(minvoc(T_0, M, Ts), minvoc(Tp_0, M, Ts), P) :-
    \+ is_val(T_0), !,
    eval(T_0, Tp_0, P).

% E-Invk-Arg
step(minvoc(V_0, M, Ts), minvoc(V_0, M, Tps), P) :-
    is_val(V_0), !, % for is_val(Ts), E-Invk-New applies
    select(T_i, Ts, Tp_i, Tps), \+ is_val(T_i), !, % will succeed; see above
    eval(T_i, Tp_i, P).

% E-New-Arg
step(new(C, Ts), new(C, Tps), P) :-
    select(T_i, Ts, Tp_i, Tps), \+ is_val(T_i), !, % all ground Ts caught by E-InvkNew
    eval(T_i, Tp_i, P).

% E-Cast
step(cast(C, T_0), cast(C, Tp_0), P) :-
    eval(T_0, Tp_0, P).
</code></pre>
<h2>Typing</h2>
<h3>Original Typing Rules</h3>
<p>The typing rules of FJ are given in TAPL, Fig. 19-4:</p>
<p><img src="TAPL%20Fig.%2019-4.png" alt="TAPL Fig. 19-4" title="Typing" /></p>
<p>They make use of the auxiliary definitions provided by Fig. 19-2 (see above).</p>
<p>The typing rules</p>
<pre><code>% T-Var
type(E, varaccess(X), C, _) :-
    memberchk(variable(C, X), E), !.
</code></pre>
<p>I somehow lost track of how E gets filled!</p>
<pre><code class="lang-prolog">% T-Field
type(E, faccess(T0, Fi), Ci, P) :-
    type(E, T0, C0, P),
    fields(C0, P, Fs),
    memberchk(field(Ci, Fi), Fs).

% T-Invk
type(E, minvoc(T0, M, Ts), C, P) :-
    type(E, T0, C0, P),
    mtype(M, C0, P, (Ds -&gt; C)), %TBD: move P to end
    type(E, Ts, Cs, P),
    subtype(Cs, Ds, P).

% T-New
type(E, new(C, Ts), C, P) :-
    fields(C, P, Fs),
    findall(D, member(field(D, _), Fs), Ds),
    type(E, Ts, Cs, P),
    subtype(Cs, Ds, P).

% T-UCast
type(E, cast(C, T0), C, P) :-
    type(E, T0, D, P),
    subtype(D, C, P), !.

% T-DCast
type(E, cast(C, T0), C, P) :-
    type(E, T0, D, P),
    subtype(C, D, P),
    C \= D, !.

% T-SCast
type(E, cast(C, T0), C, P) :-
    % C \&lt;: D and D \&lt;: C follow from above cuts
    type(E, T0, D, P),
    writeln(&quot;cross cast from ~w to ~w!&quot;, [D, C]).

% typing a list of terms (implicit in TAPL)
type(_, [], [], _).
type(E, [T|Ts], [C|Cs], P) :-
    type(E, T, C, P),
    type(E, Ts, Cs, P).

% Method Typing
ok(method(C0, M, Xs, T0), C, P) :-
    findall(Ci, member(field(Ci, _), Xs), Cs),
    type([variable(C, this)|Xs], T0, E0, P),
    subtype(E0, C0, P),
    P = program(CL), memberchk(class(C, D, _, _, _), CL),
    override(M, D, (Cs -&gt; C0), P).

% swap arguments to enable lifting over lists of methods using maplist
ok4all(C, P, M) :- ok(M, C, P).

% Class Typing
ok(class(C, D, Fs, K, Ms), P) :-
    C \= D, \+ subtype(D, C, P), % anti-symmetry; not in TAPL, Fig. 19-4
    findall(init(F, F), member(field(_, F), Fs), Is), % TBD: init(F, F) corresponds to?
    K = constructor(C, Xs, Ss, Is),
    findall(field(Cx, Nx), member(variable(Cx, Nx), Xs), GFs),
    findall(field(_, S), member(S ,Ss), Gs), % type of S not checked???
    append(Gs, Fs, GFs),
    fields(D, P, Gs), %TBD: move P to end
    maplist(ok4all(C, P), Ms).

% swap arguments to enable lifting over lists of classes using maplist
ok4all(P, C) :- ok(C, P).

% Program Typing
ok(P) :-
    P = program(Cs),
    maplist(ok4all(P), Cs).
</code></pre>
<h1>ToDos</h1>
<p>@{Ralf, Vadim}:</p>
<p>Please vote: Should I try to introduce operators like '|-' and use ':' to make the Prolog rules resemble the inference rules of TAPL more closely?</p>
<p>Please vote: Should I introduce additional auxiliary functions to implement metavariable binding in the inference rules (e.g., use something like value_of_field_i(...) rather than nth0(...), nth0(...) in E-ProjNew)?</p>
<p>@Ralf: Your experience with supporting type safety arguments by analyzing the above rules from within Prolog would be greatly appreciated!</p>
<p>@Vadim: can I have an overline, please?</p>

		<div class="last">
			<br/><hr/>
			Story generated from <a href="https://github.com/slebok/slebok/blob/master/stories/prolog-fj-tapl/main.md">prolog-fj-tapl/main.md</a>.<br/>
			The website is maintained by <a href="http://grammarware.github.io/">Dr. Vadim Zaytsev</a> a.k.a. @<a href="http://grammarware.net/">grammarware</a>.
			Last updated: #LASTMOD#.
			<valid/>
		</div>
	</body>
</html>