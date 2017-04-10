<?xml version="1.0" encoding="UTF-8"?>
<html doctype>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
		<meta name="viewport" content="initial-scale=1.0"/>
		<title>DYOL: Design Your Own Language</title>
		<link href="../www/common.css" rel="stylesheet" type="text/css" />
	</head>
	<body>
		<hr/>
		<picdir>../www</picdir>
		<pic card>
			<title>Access Modifier</title>
			<text>Annotate components with information about how others are allowed or not allowed to access them. Access can be limited by <a href="#Inheritance">inheritance</a> (<em>protected</em> in C++), <a href="#Module">modular</a> structure (<em>internal</em> in C#), etc. The most popular modifiers are <em>public</em> (everyone welcome) and <em>private</em> (fully restricted). Similar modifiers can be used to manage <a href="#Scope__Binding">scope</a>, such as <em>global</em> and <em>nonlocal</em> in Python.</text>
			<src>A:Angles</src>
			<src>HCD:42</src>
		</pic>
		<pic card>
			<title>Assertion</title>
			<text>This non-invasive form of <a href="#Exception_Handling">exception handling</a> allows language users to explicitly state (<em>assert</em>) invariants, pre-conditions and post-conditions as logic expressions that must universally hold. Such assertions can be easily removed before deploying the system into production.</text>
		</pic>
		<pic card>
			<title>Assignment</title>
			<text>Moving a data structure into another data structure. Some <abbr title="Fourth Generation Languages">4GLs</abbr> have separate statements for straightforward (byte-copying) and composite (pattern-matching) assignments. In modern languages the source data structure can usually be created on the fly. Many languages combine assignment with trivial manipulation (such as +=).</text>
			<src>CPL:82</src>
			<src>PPL:105</src>
			<src>PZPL:201</src>
			<src>WGCC:23</src>
			<src>A60:3</src>
			<src>GDB:50</src>
			<src>HCD:620</src>
			<src>ACDI:36</src>
			<src>WCI:87</src>
			<src>MCD:270</src>
			<src>SEB:293</src>
		</pic>
		<pic card>
			<title>Backtracking</title>
			<text>A computation strategy commonly found in declarative languages. Every choice in the evaluation path becomes a <em>save point</em> to which the computation returns in case of failure. All the changes made between the save point and the point of failure are undone. Backtracking is common in parsers and logic programming, and used for <a href="#Exception_Handling">error recovery</a> everywhere else.</text>
			<src>I:Kairos</src>
			<src>PPL:516</src>
			<src>PZPL:378</src>
			<src>GDB:174</src>
			<src>MCD:688</src>
			<src>SEB:629</src>
		</pic>
		<pic card>
			<title>Backward Compatibility</title>
			<text>In language evolution, introduce new features that should supercede older ones, but ensure the users that their existing code will still run. Ideally, this code should eventually be rewritten and coevolved.</text>
			<src>M:Worry resolution</src>
		</pic>
		<pic card>
			<title>Big Brother</title>
			<text>A more invasive and more powerful form of <a href="#Code_Mining">code mining</a> is examining language users' actions directly. This can be done through the <a href="#IDE">IDE</a> by equipping the plugin with logging functionality: make it record every single action taken by the user, with all the necessary context such as the files opened, and analyse it later.</text>
			<src>A:Pave the cowpaths</src>
		</pic>
		<pic card>
			<title>Block</title>
			<text>Viewing a list of statements as a specific (<em>compound</em>) kind of statement is a conceptual eye-opener and allows to treat composite constructs in a uniform and <a href="#Orthogonal_Design">orthogonal</a> way (<em>if … begin … end</em> and <em>do … begin … end</em> instead of <em>if … endif</em> and <em>do … enddo</em>). Languages either use delimiters (begin/end or curly brackets) or <a href="#Indentation__Whitespace">indentation</a>. Blocks can be seen as degenerate <a href="#Procedure">procedures</a>.</text>
			<src>CPL:85</src>
			<src>PPL:106</src>
			<src>PZPL:356</src>
			<src>A60:13</src>
			<src>GDB:53</src>
			<src>HCD:559</src>
			<src>ACDI:676</src>
			<src>WCI:88</src>
			<src>SEB:305</src>
		</pic>
		<pic card>
			<title>Branching</title>
			<text>Forking the computation based on conditions known at runtime, is a popular construct. Control flow can be transferred unconditionally (<em>branch, jump, goto</em>), or conditionally (based on true/false, zero/positive/negative, explicit condition, exhaustive patterns, etc).</text>
			<src>CPL:86</src>
			<src>PPL:42</src>
			<src>WCC:61</src>
			<src>PZPL:357</src>
			<src>WGCC:31</src>
			<src>A60:20</src>
			<src>GDB:282</src>
			<src>HCD:474</src>
			<src>ACDI:38</src>
			<src>WCI:87</src>
			<src>MCD:580</src>
			<src>SEB:306</src>
		</pic>
		<pic card>
			<title>Built-in Pattern</title>
			<text>Design patterns, implementation patterns and architecture patterns are used across language boundaries, but many domain-specific languages incorporate well-known patterns as native language constructs: Model-View-Controller, Singleton, State, Visitor, etc.</text>
			<src>A:Simplicity</src>
		</pic>
		<pic card>
			<title>Character Type</title>
			<text>A family of <a href="#Type_Check">value types</a> that can be used in a language: single characters, special characters, zero-terminated strings, fixed length strings, variable length strings, structured strings, etc.</text>
			<src>CPL:67</src>
			<src>PPL:185</src>
			<src>PZPL:215</src>
			<src>WGCC:25</src>
			<src>A60:81</src>
			<src>GDB:43</src>
			<src>WCI:35</src>
			<src>SEB:219</src>
		</pic>
		<pic card>
			<title>Class</title>
			<text>A class or a trait represents a template that can be followed by objects: a particular collection of properties and methods that can be always relied on. A class can be then <em>instantiated</em> with appropriate parameters to form an object that <em>conforms to</em> the class definition. Classes are the ultimate form of <a href="#Encapsulation">encapsulation</a>. They can be <a href="#Inheritance">inherited</a> from one another to form <a href="#Substitution">subclasses</a>.</text>
			<src>CPL:107</src>
			<src>PPL:464</src>
			<src>MCD:544</src>
			<src>SEB:110</src>
		</pic>
		<pic card>
			<title>Client/Server</title>
			<text>A language may allow one conceptual program to be split into two intercommunicating and <a href="#Synchronisation">synchronised</a> components: the <em>server</em> side which has access to all the necessary system data and runs in a fully controlled environment, and the <em>client</em> side which runs closer to the system user's data and has to survive in a much less controllable environment. Client code and server code can be written in different languages or compiled to different languages before deployment.</text>
			<src>PZPL:526</src>
		</pic>
		<pic card>
			<title>Code Completion</title>
			<text>Many <a href="#IDE">IDEs</a> monitor what the language user is typing and make suggestions based on their knowledge of the language keywords, constructs allowed in the context, variables visible from the current namespace, etc. The list of such suggestions must be short to be useful, otherwise it does nothing but annoy the users.</text>
			<src>E:Choice editing</src>
			<src>E:Portions</src>
		</pic>
		<pic card>
			<title>Code Generation</title>
			<text><a href="#Generation">Generation</a> of machine code, intermediate code, a program in a target language, an output model or a textual result, is the last <a href="#Phased_Process">phase</a> of a classic compiler (before or after <a href="#Optimisation">optimisation</a>). What is typical for code generation is the richness of the input (generously annotated intermediate graphs) and a deliberate limitedness of the output (which is often platform-specific). In <abbr title="Model-Driven Engineering">MDE</abbr> code generation is usually implemented by model-to-text transformations.</text>
			<src>PZPL:111</src>
			<src>WGCC:253</src>
			<src>GDB:518</src>
			<src>HCD:445</src>
			<src>ACDI:137</src>
			<src>MCD:313</src>
		</pic>
		<pic card>
			<title>Code Mining</title>
			<text>Besides user surveys and expert opinions, there is a third way to uncover points to improve the language in its next versions: examining existing artefacts created in this language. There are many modern techniques in mining software repositories and machine learning that can be helpful here.</text>
			<src>I:Peer feedback</src>
		</pic>
		<pic card>
			<title>Code Ownership</title>
			<text>Signing the user's name under a piece of code has the same effect as signing a person's name on an item: caring about what happens to the item later. <a href="#Comment">Comments</a> explaining which dev made which code changes existed since very early on. In modern ecosystems, ownership is tracked automatically by a version control system and can be checked at any time (<em>git blame</em>).</text>
			<src>P:Watermarking</src>
		</pic>
		<pic card>
			<title>Code Review</title>
			<text>A family of practices around other developers reviewing the code submitted by one of them. Can vary in frequency, volatility, scrutiny, responsibility, intent, etc.</text>
			<src>S:Peerveillance</src>
			<src>S:Sousveillance</src>
			<src>S:Surveillance</src>
		</pic>
		<pic card>
			<title>Comment</title>
			<text>Comments are pieces of <a href="#Documentation">documentation</a> built directly into the source of the system. Most <a href="#IDE">IDEs</a> support comments visually by presenting them in a completely different colour, usually dimmer than the rest of the program, to focus developers on executable constructs first. In some languages like BibTeX or INTERCAL everything uncompilable is a comment.</text>
			<src>P:Contrast</src>
			<src>CPL:12</src>
			<src>EML:23</src>
			<src>PZPL:99</src>
			<src>A60:36</src>
			<src>WCI:33</src>
			<src>MCD:71</src>
		</pic>
		<pic card>
			<title>Commit Hook</title>
			<text>In many version control systems it is possible to write system scripts and let them run automatically on the client side (when a language user is preparing a commit) or on the server side (when the changes are shared with others). Such scripts are used to check conformance with language conventions and thus form and influence patterns of its use.</text>
			<src>C:Habits</src>
		</pic>
		<pic card>
			<title>Compilation Error</title>
			<text>Modern languages have many means of assessing executability of the program before it is actually run. Thus, compilers tend to have a sophisticated error handling facility and try to provide enough information for the language user to fix the problems. Some languages are notoriously known for providing bad error messages. There are many ways to <em>recover</em> from an error in order to analyse the rest of the program and report multiple problems at once. Can be provided as a <a href="#Live_Feedback">live feedback</a>.</text>
			<src>E:Conditional warnings</src>
			<src>PZPL:109</src>
			<src>WGCC:303</src>
			<src>GDB:21</src>
			<src>HCD:88</src>
			<src>WCI:39</src>
			<src>MCD:95</src>
		</pic>
		<pic card>
			<title>Compilation Warning</title>
			<text>When a compiler detects a possibly dangerous situation with extremely limited applicability, it displays a warning message and proceeds with the build process anyway. In many cases there is a special option for disabling a particular warning for a particular piece of code. Warnings can be given when an <em>anomaly</em> or a <a href="#Program_Smell">smell</a> is detected, and may involve some form of <em>error correction</em>. Can be provided as a <a href="#Live_Feedback">live feedback</a>.</text>
			<src>E:Did you mean?</src>
			<src>WGCC:304</src>
			<src>GDB:382</src>
			<src>HCD:34</src>
			<src>WCI:79</src>
			<src>MCD:121</src>
		</pic>
		<pic card>
			<title>Composite Type</title>
			<text>Arrays, lists, tuples, sets and multisets are the most common <a href="#Type_Definition">user-defined</a> <a href="#Parametrised_Type">parametrised</a> types for collections of elements. It is up to the language designer to decide which ones are supported and how they are handled — can elements within on collection have different types, are they mutable, <a href="#Parameter_Passing">passed</a> by name/value/reference, etc.</text>
			<src>CPL:156</src>
			<src>PPL:70</src>
			<src>WCC:83</src>
			<src>PZPL:238</src>
			<src>WGCC:23</src>
			<src>A60:37</src>
			<src>GDB:39</src>
			<src>HCD:599</src>
			<src>ACDI:30</src>
			<src>WCI:123</src>
			<src>MCD:473</src>
			<src>SEB:71</src>
		</pic>
		<pic card>
			<title>Comprehensions</title>
			<text>List and set comprehensions are language constructs resembling the mathematical notation for constructing a set by its characteristic function, and combine <em>map</em> and <em>filter</em> classical for functional programming. Comprehensions as a language construct exist in Haskell, Python, Rascal and some other languages.</text>
			<src>MCD:621</src>
		</pic>
		<pic card>
			<title>Concrete Syntax</title>
			<text>The way to describe the concrete representation of the programs. The concrete syntax is used by humans to read, write, create and understand sentences of the language. Usually the only languages that do not have concrete syntax are those intended for internal intermediate representation. Some languages have more than one.</text>
			<src>P:Transparency</src>
			<src>PPL:89</src>
			<src>EML:21</src>
			<src>PZPL:41</src>
			<src>WGCC:17</src>
			<src>GDB:28</src>
			<src>HCD:166</src>
			<src>MCD:115</src>
		</pic>
		<pic card>
			<title>Concurrency</title>
			<text>Sometimes a program can be decomposed into components that are executable in parallel on different CPU cores or different devices. This can be completely undesirable, or performed automatically, or use the language user's guidance in <a href="#Synchronisation">synchronisation</a> of threads, tasks and processes.</text>
			<src>PZPL:483</src>
			<src>WGCC:32</src>
			<src>ACDI:571</src>
			<src>MCD:331</src>
			<src>SEB:503</src>
		</pic>
		<pic card>
			<title>Conditional Compilation</title>
			<text>Some conditions can be checked during compile type and result in different code to be produced by the compiler to be run later. This is frequently used in situations when one codebase specifies the behaviour of a system that must be compiled and deployed under a variety of devices and hardware architectures. To simplify compiler construction, conditional compilation can be handled by a preprocessor.</text>
			<src>HCD:275</src>
			<src>MCD:107</src>
		</pic>
		<pic card>
			<title>Cross-compilation</title>
			<text>A cross-compiler, or a <em>transpiler</em>, works on one platform but ultimately targets another. Relying on a cross-compiler allows to separate the development platform from the one where the programs get deployed to — for instance, a mobile app developer can work with a proper keyboard and a big screen. The <a href="#IDE">IDE</a> for a cross-compiled language may include a <a href="#Virtual_Machine">virtual machine</a> for execution, <a href="#Debugging">debugging</a>, etc. A compiler capable of producing code for different targets, is called <em>retargetable</em>.</text>
			<src>GDB:24</src>
			<src>MCD:32</src>
		</pic>
		<pic card>
			<title>Debugging</title>
			<text>The activity of finding and fixing sources of incorrect behaviour is not enjoyed by many language users, but is used by all of them without exception anyway. Declarative languages are the hardest to debug and imperative ones are the easiest. Most modern languages are shipped with a dedicated debugger or have debugging functionality in the <a href="#IDE">IDE</a>.</text>
			<src>E:Are you sure?</src>
			<src>PZPL:55</src>
			<src>WGCC:322</src>
			<src>HCD:263</src>
			<src>WCI:261</src>
			<src>E:Interlock</src>
		</pic>
		<pic card>
			<title>Default</title>
			<text>Unchanged configuration options, uninitialised <a href="#Variable">variables</a> and unspecified optional <a href="#Access_Modifier">modifiers</a> are examples of situations when a default value must be used by the compiler. These default values are decided by the language designer and typically represent the <em>best</em> option within the paradigm.</text>
			<src>E:Defaults</src>
			<src>E:Opt-outs</src>
		</pic>
		<pic card>
			<title>Deprecated Construct</title>
			<text>In language evolution, sometimes a no longer desired construct cannot be simply removed to avoid breaking <a href="#Backward_Compatibility">backward compatibility</a>. However, it can be marked explicitly as deprecated to discourage language users to rely on it.</text>
			<src>A:Feature deletion</src>
		</pic>
		<pic card>
			<title>Design Chart/Diagram</title>
			<text><abbr title="Unified Modelling Language">UML</abbr> distinguishes between structural (<a href="#Class">class</a>, <a href="#Module">package</a>, object, component, composite structure, deployment) and behavioural diagrams (activity, sequence, use case, state, communication, interaction overview, timing). The former specify and visualise structure breakdown, the latter — events and interaction. Some languages (e.g., syntactic diagrams) are both.</text>
			<src>P:Possibility trees</src>
			<src>EML:30</src>
			<src>PZPL:363</src>
			<src>WGCC:90</src>
			<src>GDB:79</src>
			<src>HCD:13</src>
			<src>ACDI:100</src>
			<src>WCI:63</src>
			<src>MCD:215</src>
			<src>SEB:139</src>
		</pic>
		<pic card>
			<title>Developer Communication</title>
			<text>A communication channel among language users that is open at all or almost all times during development. Can take a form of a specially designed office, skype chat rooms, slack channels, etc.</text>
			<src>A:Converging &amp; diverging</src>
		</pic>
		<pic card>
			<title>Documentation</title>
			<text>Language manuals are important for people learning the language, as well as for active users — sometimes these are two different sets of documents. Documentation may contain executable examples and can/should be automatically checked for internal validity and consistency with the tooling. Many elements of the language implementation ooze into its documentation (e.g., using a grammar both to define the <a href="#Concrete_Syntax">concrete syntax</a> and enumerate language constructs in a manual).</text>
			<src>M:Serving suggestion</src>
			<src>EML:264</src>
			<src>PZPL:532</src>
		</pic>
		<pic card>
			<title>Encapsulation</title>
			<text>Most high level language abstract from low level details like video memory access, memory allocation, register values, caching, etc. Depending on the language philosophy, these features may be prohibited or just hard to find for beginners. Data structures can also be encapsulated by bundling them into <a href="#Record">records</a> or <a href="#Class">classes</a>, and code can be organised in hierarchical <a href="#Module">modules</a>.</text>
			<src>A:Hiding things</src>
			<src>CPL:104</src>
			<src>PPL:12</src>
			<src>PZPL:236</src>
			<src>SEB:37</src>
		</pic>
		<pic card>
			<title>Energy Saving</title>
			<text>Computationally heavy code requires more CPU or GPU cycles, which consumes more power, which in turn makes the applications spend more energy. Making a compiler of a language especially <a href="#Optimisation">optimised</a> towards power reduction may increase its appeal for users that intend to run their programs on devices with limited power (mobile phones and smaller). Power reduction and energy saving techniques also contribute towards global sustainability, and can be used/chosen for ethical reasons.</text>
			<src>C:Assuaging guilt</src>
			<src>MCD:443</src>
		</pic>
		<pic card>
			<title>Enumeration Type</title>
			<text>An enumeration is a <a href="#Type_Definition">data type</a> that defines a very limited set of possible values which are, nevertheless, more comfortably referred to by their names and not by encoded numbers. The most famous enumeration is the Boolean (logical) type, which contains only two values: <em>true</em> and <em>false</em>. If the domain permits, the language does not have to support user-defined enumerations.</text>
			<src>CPL:66</src>
			<src>PPL:188</src>
			<src>WCC:65</src>
			<src>PZPL:213</src>
			<src>WGCC:21</src>
			<src>A60:65</src>
			<src>HCD:550</src>
			<src>ACDI:29</src>
			<src>WCI:123</src>
			<src>MCD:533</src>
			<src>SEB:224</src>
		</pic>
		<pic card>
			<title>Esotericism</title>
			<text><a href="http:catb.orgesrintercal">INTERCAL</a>, <a href="http:www.madore.org~davidprogramsunlambda">Unlambda</a>, <a href="http:catseye.tcnodeBefunge-93.html">Befunge</a>, <a href="http:www.lscheffer.commalbolge.shtml">Malbolge</a> and other <a href="https:esolangs.orgwiki">esoteric languages</a> are developed based on paradigms that are so unconventional that writing even one program puts disproportional strain on the language user. The challenging nature makes people engage and compete in programming in such languages as a form of entertainment.</text>
			<src>L:Challenges &amp; targets</src>
		</pic>
		<pic card>
			<title>Event Loop</title>
			<text>This pattern in user interface implementation turns entire program into a giant loop waiting for the user to activate its functionality by choosing the way to communicate (click, tap, edit, etc). Since direct implementations are not <a href="#Energy_Saving">green</a> (consume too much energy), it can be built natively into the language and optimised by the compiler and hardware.</text>
			<src>I:Feedback through form</src>
			<src>CPL:265</src>
			<src>MCD:473</src>
		</pic>
		<pic card>
			<title>Exception Handling</title>
			<text>An emergency sibling of <a href="#Branching">branching</a> used for extraordinary situations — can be slower than the normal branching, but usually more robust in handling situations like a cricial failure during the handling of another failure. A less invasive form of exception handling are <a href="#Assertion">assertions</a>.</text>
			<src>CPL:95</src>
			<src>PPL:316</src>
			<src>PZPL:484</src>
			<src>ACDI:637</src>
			<src>MCD:600</src>
			<src>SEB:38</src>
		</pic>
		<pic card>
			<title>Execution Error</title>
			<text>Errors can happen at <a href="#Compilation_Error">compile time</a>, but also at run time, due to hardware faults, communication problems, invalid user input or simply <a href="#Debugging">bugs</a> that were left undetected at compile time by <a href="#Static_Analysis">static analysis</a>. Some languages (Erlang) have very well-designed strategies for handling execution errors, but all others also feature some form of partial recovery from them. The language user controls runtime error handling with <a href="#Exception_Handling">exceptions</a>.</text>
			<src>E:Conditional warnings</src>
			<src>MCD:597</src>
		</pic>
		<pic card>
			<title>Expressivity</title>
			<text>There is ultimate expressivity of a software language, typically incorporated in answers to questions like <em>"is it Turing complete?"</em> (i.e., does it have enough constructs to emulate a Turing machine?), and there is a much more important and subtle issue of local expressivity in the sense of how small programs can get without sacrificing their <a href="#Readability">readability</a>. Many long existing languages have eventually developed <a href="#Syntactic_Sugar">shorthand</a> constructs for writing commonly used combinations of constructs shorter and thus faster.</text>
			<src>SEB:37</src>
		</pic>
		<pic card>
			<title>Feature Lock-out</title>
			<text>Certain combinations of language features may be disabled (errorneous) by default, with a possibility of enabling them explicitly. For example, redefining a method in a derived class is only allowed in C# when a specific <em>override</em> keyword is used, which leaves visual cues to future readers of the piece of code in question.</text>
			<src>E:Task lock-in/out</src>
		</pic>
		<pic card>
			<title>First Class Citizen</title>
			<text>It is an important design point to decide which entities within a program have the right to be saved, passed as arguments, transferred through other means, etc. Numbers? Collections? Objects? Functions? Unfinished computations? Data streams? Unfilled templates?</text>
			<src>CPL:151</src>
			<src>PPL:397</src>
			<src>PZPL:431</src>
			<src>MCD:625</src>
			<src>SEB:373</src>
		</pic>
		<pic card>
			<title>Garbage Collection</title>
			<text>Automatic release of memory is impossible for cyclic data structures. Languages that want to support them, have a <em>garbage collector</em> — a runtime compiler component that occasionally <em>marks</em> data structures that have become inaccessible and then <em>sweeps</em> them away, freeing the memory. GC can compromise language responsiveness and performance.</text>
			<src>M:Bundling</src>
			<src>PPL:443</src>
			<src>PZPL:471</src>
			<src>MCD:476</src>
			<src>SEB:117</src>
		</pic>
		<pic card>
			<title>Generation</title>
			<text>Tedious, repetitive and error-prone programming tasks can be automated by using templates, wizards, explicit staging/morphing constructs of generative programming, construction workbenches, etc. In many practical cases the language user is allowed to edit the result to fine-tune it. The final generation <a href="#Phased_Process">phase</a> is called <a href="#Code_Generation">code generation</a>.</text>
			<src>A:Mazes</src>
			<src>PPL:5</src>
			<src>EML:119</src>
			<src>MCD:8</src>
			<src>I:Tunnelling &amp; wizards</src>
		</pic>
		<pic card>
			<title>Heterogeneous Structures</title>
			<text>Some languages allow considerable freedom in <a href="#Type_Definition">types</a> that makes <a href="#Composite_Type">composite types</a> capable of carrying elements of varying structure. Examples: variant <a href="#Record">records</a> in Modula and Ada, heterogeneous lists in Python, polytypic <a href="#Procedure">functions</a> in Haskell, <a href="https:wiki.haskell.orgGeneralised_algebraic_datatype">GADTs</a> in Haskell.</text>
			<src>SEB:246</src>
		</pic>
		<pic card>
			<title>Holy War</title>
			<text>Software engineers are very passionate about what they do and which choices they make in doing it. By explicitly stating which camp the language is siding with or which key figures of the community endorse it, one can invoke an emotional response directly mappable to language's acceptance and popularity.</text>
			<src>C:Do as you’re told</src>
			<src>C:Emotional engagement</src>
		</pic>
		<pic card>
			<title>IDE</title>
			<text>Integrated Development Environments (IDEs) are used to support language users in their common tasks: code navigation, <a href="#Debugging">debugging</a>, building, <a href="#Module">modularising</a>, <a href="#Refactoring">refactoring</a>, etc. Can take a form of a dedicated standalone editor, a website or a plugin for a universal editor. Needs to have a well-designed <a href="#IDE_GUI">UI</a>.</text>
			<src>A:Conveyor belts</src>
			<src>EML:264</src>
			<src>PZPL:53</src>
			<src>SEB:53</src>
		</pic>
		<pic card>
			<title>IDE GUI</title>
			<text>Most <a href="#IDE">IDEs</a> divide the screen space among areas with different functionality: for navigating through adjacent programs, for editing the code, for reviewing the architecture, for watching how values change at runtime, etc. Advanced IDEs like IntelliJ, Eclipse or <abbr title="Visual Studio .NET">VS.NET</abbr> have so many subwindows that the user has to choose which ones to keep open at each given time.</text>
			<src>A:Positioning</src>
		</pic>
		<pic card>
			<title>Indentation &amp; Whitespace</title>
			<text>The two extremes for this aspect are: treat indentation as something crucial to the program structure (and thus process constructs differently based on columns where they start) and discard all possible indentation (even in the middle of names, as FORTRAN does). Most languages are somewhere in the middle. Normalisation of whitespace use is called <a href="#Pretty-printing">pretty-printing</a>.</text>
			<src>PPL:91</src>
			<src>EML:23</src>
			<src>PZPL:100</src>
			<src>MCD:619</src>
		</pic>
		<pic card>
			<title>Inheritance</title>
			<text>An "is-a" relation can be represented by a language construct when one class, object or function <em>inherits</em> all the properties of its <em>parent</em> and possibly adds others exclusive to itself. It is a design consideration which entities can be derived from which, whether one can inherit from several parents, etc.</text>
			<src>CPL:194</src>
			<src>PPL:465</src>
			<src>PZPL:311</src>
			<src>MCD:545</src>
			<src>SEB:453</src>
		</pic>
		<pic card>
			<title>Input/Output</title>
			<text>Most programs are not self-contained and require input data to run and produce results, which in turn need to be propagated somewhere. There are languages that are volatile with input and output, those that only work with files, those that wrap I/O as a side effect of a monad, etc.</text>
			<src>CPL:187</src>
			<src>PPL:13</src>
			<src>PZPL:223</src>
			<src>A60:73</src>
			<src>WCI:341</src>
		</pic>
		<pic card>
			<title>Instruction Set</title>
			<text>Instead of freely combinable statements and expressions, low level languages (microcodes, assemblers, <a href="#Virtual_Machine">virtual machine</a> bytecodes, etc) have limited non-extendable instruction sets. Each of the instructions typically has a mnemonic (name) and a bit-level encoding. Realistic assemblers had to introduce <a href="#Macro">macro</a> expansions to make programming experience tolerable.</text>
			<src>WGCC:292</src>
			<src>ACDI:599</src>
			<src>WCI:288</src>
			<src>MCD:367</src>
		</pic>
		<pic card>
			<title>Iteration</title>
			<text>There are many looping constructs, ranging from the imperative classics such as a for loop, to the functional classics such as <em>map</em>, <em>filter</em> and <em>fold</em> (or <em>reduce</em>). It is not uncommon for languages to support only some of these constructs. Some older <abbr title="General Purpose Languages">GPLs</abbr> and <abbr title="Fourth Generation Languages">4GLs</abbr> also have one iterative construct which can be annotated with all kinds of conditions and steppers.</text>
			<src>CPL:89</src>
			<src>PPL:47</src>
			<src>WCC:61</src>
			<src>PZPL:358</src>
			<src>WGCC:31</src>
			<src>A60:26</src>
			<src>GDB:282</src>
			<src>HCD:642</src>
			<src>ACDI:39</src>
			<src>WCI:87</src>
			<src>MCD:582</src>
			<src>SEB:318</src>
		</pic>
		<pic card>
			<title>Keyword</title>
			<text>Special words in <a href="#Concrete_Syntax">concrete syntax</a> of the language that carry identical meaning across all possible programs in the same language. Can be made reserved so that programmers may not redefine them. A language can get new keywords by evolution.</text>
			<src>CPL:11</src>
			<src>PPL:92</src>
			<src>WCC:33</src>
			<src>PZPL:99</src>
			<src>WGCC:140</src>
			<src>GDB:33</src>
			<src>ACDI:40</src>
			<src>WCI:34</src>
			<src>SEB:35</src>
		</pic>
		<pic card>
			<title>Labelling</title>
			<text>Since most engineers know several languages, some <a href="#Documentation">language manuals</a> directly assume some initial familiarity of their users with other languages. Can refer to paradigms or families (<em>"this is a <a href="#Type_Check">strongly typed</a> functional language"</em>) or directly to other languages (<em>"<a href="#Inheritance">inheritance</a> works like in Java"</em>).</text>
			<src>M:Anchoring</src>
		</pic>
		<pic card>
			<title>Lazy Evaluation</title>
			<text>A <em>lazy</em> compiler defers evaluation to the latest possible moment. Lazy languages allow infinite data structures (as long as they are processed one chunk at a time) and may have unpredictable outcomes if calculations are allowed to have side effects (like C's ++). Lazy evaluation has many applications from <a href="#Optimisation">optimisation</a> of <a href="#Code_Generation">generated code</a> to stream data processing.</text>
			<src>CPL:239</src>
			<src>PZPL:345</src>
			<src>MCD:627</src>
		</pic>
		<pic card>
			<title>Live Feedback</title>
			<text>An advanced <a href="#IDE">IDE</a> running on modern hardware can utilise its idle cycles to attempt parsing, compilation, dependency analysis and other kinds of checks while the language user is still typing the program. Errorneous and suspicious pieces of code are commonly underlined with red or yellow squiggly lines familiar from natural word processors.</text>
			<src>I:Real-time feedback</src>
		</pic>
		<pic card>
			<title>Macro</title>
			<text>A mechanism commonly found in low level languages that allow users to define a piece of <a href="#Syntactic_Sugar">syntactic sugar</a> to be <em>expanded</em> into a longer sequence of <a href="#Instruction_Set">instructions</a>. Advanced parametrised macros resemble <a href="#Procedure">procedures</a> in expressivity but may behave less reliably due to their lexical nature. In bigger languages macros are typically handled by a preprocessor.</text>
			<src>PZPL:74</src>
			<src>WGCC:294</src>
			<src>GDB:3</src>
			<src>HCD:101</src>
			<src>MCD:102</src>
		</pic>
		<pic card>
			<title>Meme</title>
			<text><a href="http:lolcode.org">LOLCODE</a>, <a href="http:lhartikk.github.ioArnoldC">ArnoldC</a> and others are languages developed based on the memes that are circulating among software engineers: the popularity of them piggybacks entirely on the viral nature of those memes.</text>
			<src>L:Make it a meme</src>
		</pic>
		<pic card>
			<title>Metaphor</title>
			<text>Atom, <a href="#Backtracking">backtracking</a>, binding, <a href="#Procedure">body</a>, build, cloud, collision, compiler, dangling else, <a href="#Debugging">debugging</a>, <a href="#Syntactic_Sugar">desugaring</a>, <a href="#Record">dictionary</a>, <a href="#Type_Check">duck typing</a>, environment, filter, <a href="#Numeric_Data_Type">floating point</a>, forest, framework, <a href="#Garbage_Collection">garbage collection</a>, <a href="#Branching">go to</a>, heap, <a href="#Inheritance">inheritance</a>, <a href="#Branching">jump</a>, <a href="#Standard_Library">library</a>, linking, map, <a href="#Pointer">pointer</a>, pruning, <a href="#Synchronisation">rendezvous</a>, stack, turtle, weaving, window, …</text>
			<src>P:Metaphors</src>
		</pic>
		<pic card>
			<title>Module</title>
			<text>Large programs inevitably outgrow their creators' capabilities to understand them all at once. Comprehension can be aided greatly by the language providing modules, packages, classes, procedures and other elements to group related code fragments together. Modern <a href="#IDE">IDEs</a> can analyse code for cohesion and coupling to help improve modularisation. Modules are often [one of the possible] <em>compilation units</em>.</text>
			<src>A:Segmentation</src>
			<src>CPL:113</src>
			<src>PPL:267</src>
			<src>WCC:92</src>
			<src>HCD:459</src>
			<src>MCD:32</src>
			<src>SEB:380</src>
			<src>P:Proximity &amp; grouping</src>
		</pic>
		<pic card>
			<title>Numeric Data Type</title>
			<text>Often gets overlooked at the early stages of language design, but could significantly shape the application area of the language. There are many integer <a href="#Type_Check">types</a>, distinguished by their byte sizes and therefore value ranges; also decimal types with fixed scale and precision; and floating point types good for scientific computations but not for handling finances.</text>
			<src>CPL:63</src>
			<src>PPL:65</src>
			<src>WCC:81</src>
			<src>PZPL:205</src>
			<src>WGCC:22</src>
			<src>A60:16</src>
			<src>WCI:36</src>
			<src>MCD:532</src>
			<src>SEB:216</src>
		</pic>
		<pic card>
			<title>Operator Overloading</title>
			<text>A language designer may decide to reuse the same symbol for several different operators, usually conceptually related (such as + for arithmetic addition and string concatenation). Using it for totally unrelated operations is considered harmful for <a href="#Readability">readability</a> (such as & for pointer referencing and bit conjunction in C). In some languages (C++, Ada, Fortran) language users can also <a href="#Redefine">redefine</a> their own operators that complement their own <a href="#Type_Definition">defined types</a>.</text>
			<src>SEB:284</src>
		</pic>
		<pic card>
			<title>Operator Precedence</title>
			<text>To avoid excessive use of parentheses, a language can provide a default convention of disambiguating constructs with 3+ entities bound by binary operators. In arithmetic expressions, the precedence usually follows mathematical laws.</text>
			<src>CPL:79</src>
			<src>PPL:94</src>
			<src>PZPL:332</src>
			<src>WGCC:28</src>
			<src>A60:9</src>
			<src>GDB:47</src>
			<src>HCD:819</src>
			<src>WCI:71</src>
			<src>MCD:158</src>
			<src>SEB:133</src>
		</pic>
		<pic card>
			<title>Optimisation</title>
			<text>It is always easier and less error-prone to <a href="#Generation">generate</a> intermediate code or <a href="#Code_Generation">machine code</a> with simple and straightforward patterns and subsequently optimise the result in a different <a href="#Phased_Process">phase</a>. The effect on the language users is that they do not need to optimise their programs to the fullest, since their own naïve code will be optimised together with the rest. Small efficiences are only relevant 3% of the time, for the rest premature optimisation is considered the root of all evil.</text>
			<src>PZPL:110</src>
			<src>WGCC:326</src>
			<src>GDB:406</src>
			<src>HCD:657</src>
			<src>ACDI:6</src>
			<src>WCI:382</src>
			<src>MCD:70</src>
		</pic>
		<pic card>
			<title>Order</title>
			<text>Many languages have ordering constraints: a <a href="#Variable">variable</a> must be declared before its use, a <a href="#Procedure">procedure</a> signature known before its call, etc. Sometimes constructs are grouped and it is the groups that must follow the order: e.g., first all declarations, then all functions, then the rest of the code (COBOL's <em>divisions</em> are the extreme example of this).</text>
			<src>L:Storytelling</src>
			<src>A60:45</src>
			<src>MCD:388</src>
			<src>P:Implied sequences</src>
			<src>P:Nakedness</src>
		</pic>
		<pic card>
			<title>Orthogonal Design</title>
			<text>Independent features should be controlled by independent mechanisms. Related constructs should look similar and different ones should look different. Regular rules without exceptions are easier to learn. The less surprises one has while learning the language, the higher the language quality.</text>
			<src>P:(A)symmetry</src>
			<src>P:Similarity</src>
			<src>PPL:8</src>
			<src>SEB:31</src>
		</pic>
		<pic card>
			<title>Parameter Passing</title>
			<text>There are several strategies in mapping <em>arguments</em> that are being passed to a <a href="#Procedure">procedure</a> in a call with the <em>parameters</em> that procedure expects to get: <em>call by value</em> (expose only the values, safe but inefficient for <a href="#Composite_Type">composite data</a>), <em>call by result</em> (same but can return several values at once), <em>call by value-result</em> (the caller gets values, updates them, they are passed back), <em>call by reference</em> (expose <a href="#Pointer">pointers</a> to values, efficient but unsafe), <em>call by name</em> (evaluate pointers when they are used inside the caller), etc.</text>
			<src>ACDI:116</src>
			<src>WCI:161</src>
			<src>MCD:559</src>
			<src>SEB:348</src>
		</pic>
		<pic card>
			<title>Parametrised Type</title>
			<text>Some <a href="#Type_Check">types</a> can be defined partially by the user and partially by the language designer. For example, the language designer knows what a <a href="#Composite_Type"><em>list</em></a> is, and the language user can select any other type for list elements — this will change handling of such elements, but the philosophy behind their collection will stay the same.</text>
			<src>CPL:180</src>
			<src>PPL:279</src>
			<src>PZPL:291</src>
			<src>SEB:446</src>
		</pic>
		<pic card>
			<title>Performance Testing</title>
			<text>Performance testing and its variations like profiling and stress testing are commonly desired nice-to-have features in <a href="#IDE">IDEs</a>. Languages and their ecosystems greatly vary in the extent to which this aspect is recognised and supported.</text>
			<src>A:Pave the cowpaths</src>
			<src>WCI:279</src>
			<src>MCD:349</src>
		</pic>
		<pic card>
			<title>Phased Process</title>
			<text>Breaking a process into phases is one of the most used divide-and-conquer principles applied in language processing. Most compilers are designed to work in phases, and different competences and skills are required to implement each phase.</text>
			<src>I:Partial completion</src>
			<src>PPL:38</src>
			<src>WCC:7</src>
			<src>PZPL:73</src>
			<src>WGCC:4</src>
			<src>GDB:6</src>
			<src>HCD:2</src>
			<src>ACDI:2</src>
			<src>WCI:7</src>
			<src>MCD:3</src>
			<src>SEB:48</src>
		</pic>
		<pic card>
			<title>Picture Clause</title>
			<text>A <a href="#Type_Check">data type</a> that saves a specially formatted entity (usually a float or a date) that can be used directly in printing statements but also manipulated as data.</text>
		</pic>
		<pic card>
			<title>Platform Lock-in/out</title>
			<text>Supporting a great language only for one particular hardware platform, <abbr title="Operating System">OS</abbr> or IDE, implicitly forces people to use them. For example, malware practices of Java installers turned some users agains <abbr title="Java Virtual Machine">JVM</abbr>, which also deprived them of Scala and Clojure. Another example is .NET Core, a redesign of the .NET Framework which allows typically Windows-specific code to run on Linux.</text>
			<src>M:Format lock-in/out</src>
		</pic>
		<pic card>
			<title>Pointer</title>
			<text>A popular data type in low level languages, representing a memory address where the data structure is stored — which is more efficient to pass across functions than the structure itself. The <a href="#Type_Check">type</a> of the structure needs to be known to decipher itse contents, since the pointer itself is nothing more than a number.</text>
			<src>CPL:69</src>
			<src>PPL:206</src>
			<src>WCC:86</src>
			<src>PZPL:220</src>
			<src>WGCC:25</src>
			<src>GDB:34</src>
			<src>HCD:469</src>
			<src>ACDI:110</src>
			<src>MCD:464</src>
			<src>SEB:255</src>
		</pic>
		<pic card>
			<title>Pretty-printing</title>
			<text>A language can have a <a href="#Default">default</a> formatting convention that is not only accepted by the community to improve the representation quality of the programs, but also automated and shipped in a form of a tool. Such a tool can be very configurable, have limited feature selection or none at all. A pretty-printer that scans the input and minimises the <a href="#Indentation__Whitespace">delimiters</a> in it, is sometimes called a program <em>compactor</em>.</text>
			<src>P:Implied sequences</src>
			<src>PPL:89</src>
			<src>EML:23</src>
			<src>WCI:42</src>
		</pic>
		<pic card>
			<title>Preview</title>
			<text>Some features are very useful in general, but implemented in a way that sometimes fails. In this case, the impact of an application of a feature can be explicitly examined by the language user before agreeing to proceed. Common for database queries and <a href="#Refactoring">object-oriented refactorings</a>.</text>
			<src>I:Simulation &amp; feedforward</src>
		</pic>
		<pic card>
			<title>Procedure</title>
			<text>Pieces of code that can be executed from other places in the program, are common to all languages, since they promote reuse, but they are designed differently. Some languages only allow them to be attached to an object (methods) or a class (static methods), others provide special <a href="#Synchronisation">synchronisation</a> mechanisms to procedures to cooperate (coroutines, delegates), etc. If a procedure may have <em>parameters</em>, the designer must decide on the <a href="#Parameter_Passing">parameter passing</a> strategy.</text>
			<src>CPL:106</src>
			<src>PPL:35</src>
			<src>WCC:74</src>
			<src>PZPL:276</src>
			<src>WGCC:75</src>
			<src>A60:42</src>
			<src>GDB:55</src>
			<src>HCD:466</src>
			<src>ACDI:34</src>
			<src>WCI:157</src>
			<src>MCD:544</src>
			<src>SEB:346</src>
		</pic>
		<pic card>
			<title>Program Smell</title>
			<text>A <em>smell</em> is found when a code fragment has suspicious characteristics even without being wrong. Modern computer science identifies smells for code, models, architecture, spreadsheets, hardware, grammars, etc. The very use of the word "smell" strongly implies that any neat self-respecting language user should try to leave less of those when touching the code.</text>
			<src>C:Desire for order</src>
		</pic>
		<pic card>
			<title>Readability</title>
			<text>In many cases a program is written once but read many times for many purposes: to <a href="#Debugging">fix bugs</a>, introduce new features, understand its behaviour, change it, etc. Hence, the ease of reading a program can become a cornerstone of the design of a language. Some existing languages, like COBOL and many modern <abbr title="Domain-Specific Languages">DSLs</abbr>, were specifically designed to empower domain experts to read and write in them. Others, like APL and Perl, while <a href="#Expressivity">expressive</a>, are known to produce unreadable programs.</text>
			<src>L:Storytelling</src>
			<src>SEB:30</src>
		</pic>
		<pic card>
			<title>Record</title>
			<text>Many languages have some kinds of records or structures that bundle several related pieces of data without attaching methods to work with that data. A dynamic variation thereof is known as a <em>dictionary</em> or a <em>map</em> (e.g., hashmap) and it allows users to add and remove fields at runtime.</text>
			<src>CPL:169</src>
			<src>PPL:199</src>
			<src>WCC:41</src>
			<src>PZPL:257</src>
			<src>GDB:41</src>
			<src>HCD:543</src>
			<src>ACDI:33</src>
			<src>WCI:124</src>
			<src>MCD:538</src>
			<src>SEB:224</src>
		</pic>
		<pic card>
			<title>Redefine</title>
			<text>Once something has been defined, it can be redefined in many languages: <a href="#Inheritance">derived classes</a> can overload base classes' properties, local variables can shadow the global ones with the same name, the same memory fragment can be treated as belonging to two separate <a href="#Type_Check">data types</a> (requiring <em>alias <a href="#Static_Analysis">analysis</a></em>), etc.</text>
			<src>CPL:138</src>
			<src>PPL:85</src>
			<src>ACDI:293</src>
			<src>MCD:520</src>
			<src>SEB:39</src>
		</pic>
		<pic card>
			<title>Refactoring</title>
			<text>Refactorings are code changes that do not impact the system's behaviour but change its internal structure to improve code quality, prepare for the subsequent change, etc. Some <abbr title="Domain-Specific Modelling Languages">DSMLs</abbr> mean their programs to <em>only</em> change through refactorings and refinements. In other domains it is also not uncommon to eventually get refactoring support in the <a href="#IDE">IDE</a>.</text>
			<src>C:Rephrasing &amp; renaming</src>
			<src>EML:154</src>
		</pic>
		<pic card>
			<title>Runtime</title>
			<text>A runtime environment is a system component that must accompany the result of the compilation in order for it to function correctly. May be completely non-existent, contain <a href="#Standard_Library">standard libraries</a> or a <a href="#Virtual_Machine">virtual machine</a>.</text>
			<src>WCC:42</src>
			<src>WGCC:319</src>
			<src>GDB:350</src>
			<src>HCD:477</src>
			<src>ACDI:105</src>
			<src>WCI:199</src>
			<src>MCD:25</src>
		</pic>
		<pic card>
			<title>Scope &amp; Binding</title>
			<text>If a <a href="#Type_Definition">type</a> or a <a href="#Variable">variable</a> is declared, how far from the declaration can you still use them? If an outside entity is used in a <a href="#Procedure">procedure</a>, will it be taken from the parent scope of the procedure or from the scope of the call? Several equally viable paradigms are known for scoping, name-type binding and declaration-reference binding.</text>
			<src>CPL:55</src>
			<src>PZPL:82</src>
			<src>WGCC:20</src>
			<src>A60:48</src>
			<src>GDB:60</src>
			<src>HCD:559</src>
			<src>ACDI:43</src>
			<src>WCI:150</src>
			<src>MCD:515</src>
			<src>SEB:179</src>
		</pic>
		<pic card>
			<title>Standard Library</title>
			<text>A library or a set of libraries that are built into the language. It can be a tough design decision for the language designer to decide which functionality needs to become native constructs and which can go into the standard library. Such library functions can be <a href="#Macro">expanded</a> into code directly or shipped together with the compiled code as a <a href="#Runtime">runtime</a>.</text>
			<src>WCC:78</src>
			<src>A60:32</src>
			<src>WCI:164</src>
			<src>MCD:364</src>
		</pic>
		<pic card>
			<title>Static Analysis</title>
			<text>If a language does not directly limit its users' ability to express thing in a "bad" way, this is still possible for the compiler of the language. Parsing, <a href="#Type_Check">type checking</a>, dependence analysis, <a href="#Pretty-printing">formatting</a>, conventions are all examples of this. One of the language design principles states that if an error gets though one line of defence, it should be caught by the next one.</text>
			<src>A:Roadblock</src>
			<src>PPL:7</src>
			<src>EML:264</src>
			<src>PZPL:169</src>
			<src>ACDI:169</src>
			<src>WCI:105</src>
			<src>MCD:115</src>
			<src>SEB:196</src>
		</pic>
		<pic card>
			<title>Substitution</title>
			<text>When a subprogram specifies the <a href="#Type_Check">types</a> of input it expects, these types do not need to be treated precisely: often one can use entities of subtypes of the specified types (e.g., put a circle in a function that draws a shape because a circle is a subtype of shape). Subtyping is nontrivial, and the designer must choose among covariance, contravariance, invariance, etc. Non-strict handling of values of different types involves designing rules for type casts and conversions.</text>
			<src>CPL:197</src>
			<src>PPL:208</src>
			<src>PZPL:199</src>
			<src>MCD:530</src>
		</pic>
		<pic card>
			<title>Synchronisation</title>
			<text>Managing the use of resources by some predefined form of synchronisation between readers and writers. Can be synchronous or asynchronous, and take forms of resource locks, semaphors, pipes, rendezvous, handshakes, message passing channels, etc. Always needed for <a href="#Concurrency">concurrent computing</a>.</text>
			<src>A:Converging &amp; diverging</src>
			<src>CPL:267</src>
			<src>PPL:328</src>
			<src>PZPL:321</src>
			<src>MCD:740</src>
			<src>SEB:511</src>
		</pic>
		<pic card>
			<title>Syntactic Sugar</title>
			<text>Nice-to-have constructs that are not extending the expressive power of the language, are sometimes not actually implemented directly — just expanded into bigger sequences of more primitive and less user-friendly constructs.</text>
			<src>P:Fake affordances</src>
			<src>MCD:633</src>
		</pic>
		<pic card>
			<title>Syntax Highlighting</title>
			<text>A development environment of the language can profit from visualisation even if the language is textual by colour-coding different categories of words (strings, numbers, standard libraries, reserved words, etc). Colours are also commonly used for non-textual languages, unless programs are expected to be printed or viewed on grayscale devices.</text>
			<src>A:Material properties</src>
			<src>EML:27</src>
			<src>P:Colour associations</src>
		</pic>
		<pic card>
			<title>Trade Off</title>
			<text>When direct <a href="#Optimisation">optimisation</a> is impossible or not sufficiently effective, the language designer can identify trade offs and leave them all inside the language for the users to choose. For example, many compilers have compilation options optimising <a href="#Code_Generation">code generation</a> for speed, size or <a href="#Energy_Saving">power</a>, but not all three. Many languages have <a href="#Standard_Library">libraries</a> and <a href="#Composite_Type">structures</a> for both <em>arrays</em> (fast, immutable length) and <em>lists</em> (slower but flexible).</text>
			<src>C:Framing</src>
			<src>MCD:445</src>
			<src>SEB:44</src>
		</pic>
		<pic card>
			<title>Type Check</title>
			<text>Components can be identified, explicitly or automatically, to belong to a particular <em>type</em>. Among other things, the type determines applicability and compatibility of components with one another. In complex scenarios (like a monadic bind) hard to understand components can only fit together in one possible way. Type equivalence rules can be based on names, <a href="#Type_Definition">structure</a>, <a href="#Scope__Binding">scopes</a>, etc.</text>
			<src>E:Matched affordances</src>
			<src>PPL:129</src>
			<src>PZPL:195</src>
			<src>WGCC:26</src>
			<src>GDB:49</src>
			<src>HCD:489</src>
			<src>WCI:91</src>
			<src>MCD:521</src>
			<src>SEB:38</src>
		</pic>
		<pic card>
			<title>Type Definition</title>
			<text>Several <abbr title="General Purpose Languages">GPLs</abbr> and many <abbr title="Domain-Specific Languages">DSLs</abbr> can exist perfectly without ever needing any user-defined types. However, in many cases it can prove useful to allow the language user to make their own <a href="#Record">data structures</a> and algebraic data types to provide their input for the <a href="#Type_Check">type checker</a>.</text>
			<src>CPL:60</src>
			<src>PPL:268</src>
			<src>WCC:26</src>
			<src>PZPL:186</src>
			<src>WGCC:234</src>
			<src>A60:15</src>
			<src>GDB:314</src>
			<src>HCD:489</src>
			<src>ACDI:25</src>
			<src>WCI:111</src>
			<src>MCD:522</src>
			<src>SEB:34</src>
		</pic>
		<pic card>
			<title>Undefined Behaviour</title>
			<text>When a particular combination of language constructs is not explicitly specified by the standard, its implementers can take different shortcuts in interpreting it. As a result, the same piece of code produces different results based on the compiler, the computer, time of day, etc. Common in legacy languages like C or COBOL.</text>
			<src>M:Antifeatures &amp; crippleware</src>
			<src>HCD:598</src>
		</pic>
		<pic card>
			<title>Unification</title>
			<text>Given two <a href="#Composite_Type">composite data structures</a>, a compiler can be tasked to find their matching components and proceed with <a href="#Assignment">assignment</a>, transformation, etc. Limited forms of unification may be called <em>pattern matching</em>. Widely used in logic programming, metaprogramming, model synchronisation, bidirectional transformation, <abbr title="Fourth Generation Languages">4GLs</abbr> for banking, etc.</text>
			<src>CPL:248</src>
			<src>PPL:507</src>
			<src>PZPL:369</src>
			<src>MCD:622</src>
		</pic>
		<pic card>
			<title>Variable</title>
			<text>These named memory areas are thought to be fundamental for the nature of computation — and they are within the von Neumann paradigm, which is not the only choice modern designers have. One can make their language more functional and force its users to think about data flow, or make it more imperative and let them worry about where the intermediate data is stored. In some languages naming or stropping of the variables can implicitly define their <a href="#Type_Check">types</a>.</text>
			<src>CPL:52</src>
			<src>PPL:22</src>
			<src>WCC:72</src>
			<src>PZPL:183</src>
			<src>WGCC:9</src>
			<src>A60:5</src>
			<src>HCD:522</src>
			<src>ACDI:26</src>
			<src>SEB:35</src>
		</pic>
		<pic card>
			<title>Virtual Machine</title>
			<text>An emulator for a real or imaginary hardware architecture that has a low level coding language that can be used by other components or tools to compiler high level languages to. VMs trades off performance for an extra layer of abstraction. Some virtual machines (e.g., <a href="https:en.wikipedia.orgwikiLimbo_(programming_language)">Dis</a>) compile their code into native machine code just before running it.</text>
			<src>PZPL:75</src>
			<src>WGCC:271</src>
			<src>HCD:446</src>
			<src>ACDI:767</src>
			<src>MCD:450</src>
		</pic>
		<hr/>
		<div class="src">
			<ul>				<li class="dwi A"><a href="http://designwithintent.co.uk/architectural-lens/">Design with Intent (Lockton, Harrison, Stanton, 2010): Architectural Lens</a></li>
				<li class="dwi E"><a href="http://designwithintent.co.uk/errorproofing-lens/">Design with Intent (Lockton, Harrison, Stanton, 2010): Errorproofing Lens</a></li>
				<li class="dwi I"><a href="http://designwithintent.co.uk/interaction-lens/">Design with Intent (Lockton, Harrison, Stanton, 2010): Interaction Lens</a></li>
				<li class="dwi L"><a href="http://designwithintent.co.uk/ludic-lens/">Design with Intent (Lockton, Harrison, Stanton, 2010): Ludic Lens</a></li>
				<li class="dwi P"><a href="http://designwithintent.co.uk/perceptual-lens/">Design with Intent (Lockton, Harrison, Stanton, 2010): Perceptual Lens</a></li>
				<li class="dwi C"><a href="http://designwithintent.co.uk/cognitive-lens/">Design with Intent (Lockton, Harrison, Stanton, 2010): Cognitive Lens</a></li>
				<li class="dwi M"><a href="http://designwithintent.co.uk/machiavellian-lens/">Design with Intent (Lockton, Harrison, Stanton, 2010): Machiavellian Lens</a></li>
				<li class="dwi S"><a href="http://designwithintent.co.uk/security-lens/">Design with Intent (Lockton, Harrison, Stanton, 2010): Security Lens</a></li>
			</ul>
		</div>
		<div class="src">
			<ul>				<li class="pl rdb"><a href="#">RDB: Compilers: (Aho, Sethi, Ullman, ...)</a></li>				<li class="pl ppl"><a href="http://amzn.to/2nmFg70">PPL: Principles of Programming Languages: Design, Evaluation and Implementation (MacLennan, 1983)</a></li>				<li class="pl pdb"><a href="#">PDB: Compilers: (Aho, Sethi, Ullman, Lam, ...)</a></li>				<li class="pl wcc"><a href="http://amzn.to/2nmUPeU">WCC: Compiler Construction (Wirth, 2005)</a></li>				<li class="pl pzpl"><a href="http://amzn.to/2nnaieI">PZPL: Programming Languages: Design and Implementation (Pratt, Zelkowitz, 2001)</a></li>				<li class="pl wgcc"><a href="#">WGCC: Compiler Construction (Waite, Goos, 1984)</a></li>				<li class="pl a60"><a href="#">A60: A Primer of ALGOL 60 Programming (Dijkstra, 1962)</a></li>				<li class="pl cpl"><a href="http://amzn.to/2n8cd5u">CPL: Comparative Programming Languages (Wilson, Clark, 1993)</a></li>				<li class="pl gdb"><a href="#">GDB: Principles of Compiler Design (Aho, Ullman, 1979)</a></li>				<li class="pl eml"><a href="http://amzn.to/2n8yz6y">EML: Engineering Modeling Languages (Combemale, France, Jézéquel, Rumpe, Steel, Vojtisek, 2017)</a></li>				<li class="pl hcd"><a href="#">HCD: Compiler Design in C (Holub, 1990)</a></li>				<li class="pl acdi"><a href="#">ACDI: Advanced Compiler Design and Implementation (Muchnick, 1997)</a></li>				<li class="pl wci"><a href="#">WCI: Writing Compilers and Interpreters: An Applied Approach (Mak, 1991)</a></li>			</ul>
		</div>
		<hr/>
		<div class="last">
			The collection of <strong>98</strong> cards created and maintained by <a href="http://grammarware.github.io/">Dr. Vadim Zaytsev</a> a.k.a. @<a href="http://grammarware.net/">grammarware</a>.<br/>
			Sources colour coded and explained above this notice.<br/>
			Last updated: #LASTMOD#.<br/>
			<a href="http://validator.w3.org/check/referer"><img src="../www/xhtml.88.png" alt="XHTML 1.1" /></a>
			<a href="http://jigsaw.w3.org/css-validator/check/referer"><img src="../www/css.88.png" alt="CSS 3" /></a>
		</div>
	</body>
</html>