Project swift-compiler-crashes
==============================

This repo collects known test cases crashing the Swift compiler. All tests cases in the `crashes/` and `crashes-fuzzing/` directories are known to generate a compiler crash under Xcode 6.1.1 GM seed (6A2006).

Help us towards a rock solid Swift compiler by contributing any compiler crashes you may encounter.

Happy Swifting! :-)

Contributor hall of fame
========================

| GitHub contributor | Twitter | Cases contributed | Started contributing |
| :----------------- | :------ | ----------------: | -------------------: |
| <a href="https://github.com/practicalswift">practicalswift</a> – practicalswift | <a href="https://twitter.com/practicalswift">@practicalswift</a> | 22694 cases (66 manual + 22628 fuzzing) | Xcode6.0-Beta6 |
| <a href="https://github.com/fluidsonic">fluidsonic</a> – Marc Knaup | <a href="https://twitter.com/marcknaup">@marcknaup</a> | 7 cases | Xcode6.1-Beta3 |
| <a href="https://github.com/tmu">tmu</a> – Teemu Kurppa | <a href="https://twitter.com/Teemu">@Teemu</a> | 4 cases | Xcode6.0-Beta6 |
| <a href="https://github.com/beltex">beltex</a> – beltex | … | 3 cases | Xcode6.1.1-GM-Seed |
| <a href="https://github.com/rnapier">rnapier</a> – Rob Napier | <a href="https://twitter.com/cocoaphony">@cocoaphony</a> | 3 cases | Xcode6.0-Beta7 |
| <a href="https://github.com/jvasileff">jvasileff</a> – John Vasileff | <a href="https://twitter.com/jvasileff">@jvasileff</a> | 2 cases | Xcode6.0-Beta6 |
| <a href="https://github.com/zneak">zneak</a> – Félix Cloutier | <a href="https://twitter.com/zneakr">@zneakr</a> | 2 case | Xcode6.1.1-GM-Seed |
| <a href="https://github.com/0xc010d">0xc010d</a> – Ievgen Solodovnykov | <a href="https://twitter.com/0xc010d">@0xc010d</a> | 1 case | Xcode6.0-Beta6 |
| <a href="https://github.com/AlexDenisov">AlexDenisov</a> – Alexey Denisov | <a href="https://twitter.com/1101_debian">@1101_debian</a> | 1 case | Xcode6.0-Beta6 |
| <a href="https://github.com/airspeedswift">airspeedswift</a> – Airspeed Velocity | <a href="https://twitter.com/airspeedswift">@airspeedswift</a> | 1 case | Xcode6.1.1-GM-Seed |
| <a href="https://github.com/jansabbe">jansabbe</a> – Jan Sabbe | <a href="https://twitter.com/jansabbe">@jansabbe</a> | 1 case | Xcode6.0-Beta6 |
| <a href="https://github.com/julasamer">julasamer</a> – julasamer | … | 1 case | Xcode6.1-Beta1 |
| <a href="https://github.com/martijnwalraven">martijnwalraven</a> – Martijn Walrav | … | 1 case | Xcode6.1-GM-Seed2 |
| <a href="https://github.com/mattdaw">mattdaw</a> – Matt Daw | <a href="https://twitter.com/mattdaw">@mattdaw</a> | 1 case | Xcode6.1.1-GM-Seed |
| <a href="https://github.com/mayoff">mayoff</a> – Rob Mayoff | <a href="https://twitter.com/rmayoff">@rmayoff</a> | 1 case | Xcode6.1 |
| <a href="https://github.com/owensd">owensd</a> – David Owens II | <a href="https://twitter.com/owensd">@owensd</a> | 1 case | Xcode6.0-Beta6 |
| <a href="https://github.com/radex">radex</a> – Radek Pietruszewski | … | 1 case | Xcode6.1 |
| <a href="https://github.com/valfer">valfer</a> – Valerio Ferrucci | <a href="https://twitter.com/valferweet">@valferweet</a> | 1 case | Xcode6.1-GM-Seed2 |

Getting started
===============

```
$ git clone https://github.com/practicalswift/swift-compiler-crashes.git
$ cd swift-compiler-crashes/
$ ./test.sh

Running tests against: swift-600.0.56.1 (Swift 1.1)
Using Xcode found at path: /Applications/Xcode.app/Contents/Developer/
Usage: ./test.sh [-v] [-q] [-c<columns>] [-l] [file ...]
Adding a new test case? The crash id to use for the next test case is 22777.

== Currently known crashes, set #1 (human reported crashes - i.e. non-fuzzing generated) ==

  ✘  00023 getcallerdefaultarg                                    (6746b1b313)
  ✘  00026 extension property referenced from another file        (          )
  ✘  00031 no stacktrace                                          (          )
  ✘  00033 error (malloc)                                         (bcdeb772f9)
  ✘  00037 no stacktrace (script)                                 (6534f3ebb9)
  ✘  00041 szone malloc should clear                              (bb3db03b05)
  ✘  00043 substdependenttypes                                    (d54f808042)
  ✘  00048 no stacktrace (runtime)                                (          )
  ✘  00049 swift nominaltypedecl getmembers                       (998cb416d0)
  ✘  00052 no stacktrace                                          (          )
  ✘  00054 swift substitutedtype get                              (e6c557fb7f)
  ✘  00055 no stacktrace                                          (          )
  ✘  00061 visit any struct type                                  (be94e9f0c6)
  ✘  00226 swift lowering silgenfunction emitcurrythunk           (da297cd75d)
  ✘  00239 swiftdeclconverter importconstructor                   (b72d10613c)
  ✘  00240 argemitter emitexpanded                                (325e58319f)
  ✘  00241 swift lowering typeconverter getconstantinfo           (75d03cc602)
  ✘  00242 swift lowering silgenfunction emitclosurevalue         (c2b4da1738)
  ✘  00269 swift irgen irgenmodule emitsilfunction                (854fb20099)
  ✘  00271 swift irgen irgenfunction emittypemetadataref          (b5e610cef0)
  ✘  00272 llvm irbuilder createcall                              (b6133a1530)
  ✘  00322 swift mangle mangler manglenominaltype                 (aeed606f5d)
  ✘  00323 swift apply generic protocol                           (b41c24119f)
  ✘  00324 swift shortcircuit isequal                             (          )
  ✘  00325 global is external                                     (          )
  ✘  00326 llvm constantexpr getgetelementptr                     (169cadc0b4)
  ✘  01338 undefined symbols for architecture                     (          )
  ✘  01339 phi node operands not same as result                   (          )
  ✘  01340 llvm getelementptrinst getindexedtype                  (ff73ac194f)
  ✘  01341 broken function found compilation aborted              (          )
  ✘  01646 super inside an autoclosure                            (          )
  ✘  01647 no stacktrace                                          (          )
  ✘  01648 global is external                                     (          )
  ✘  01956 method declared to return its own name                 (          )
  ✘  02257 swift any from nsmutablearray                          (f59d00166d)
  ✘  02258 global is external                                     (          )
  ✘  02259 handling kinfo_proc struct                             (15a87ffc17)
  ✘  12261 destructing pair enum tuple                            (50faa33647)
  ✘  12262 bitcast requires types of same width                   (          )
  ✘  12264 vtable for llvm callinst                               (9093ef9b75)
  ✘  21266 generic protocol init                                  (0907a5254c)
  ✘  21267 swift lowering silgenfunction emitrvalueforpropertyloa (26d22e8954)
  ✘  21268 swift irgen emitpolymorphicarguments                   (dedc6f5c94)
  ✘  21269 swift irgen callemission emittounmappedexplosion       (0aef6d0846)
  ✘  21270 swift lexer lexidentifier                              (486a5d6b3f)
  ✘  21271 swift silfunctiontype substgenericargs                 (1df9685f75)
  ✘  21272 empty stacktrace                                       (ba53be435a)
  ✘  22523 llvm simplifycfgopt (-O)                               (50c20c3a67)
  ✘  22524 x                                                      (2c5f41b9e7)

== Currently known crashes, set #2 (crashes found by fuzzing) ==

  ✘  00020 swift typechecker conformstoprotocol                   (98370b9325)
  ✘  00056 addminimumprotocols                                    (870fbffa86)
  ✘  00057 get type of member reference                           (1bd96f7fa0)
  ✘  00058 get self type for container                            (a127b10392)
  ✘  00063 tiny malloc from free list                             (4bce4823d3)
  ✘  00066 diagnoseunknowntype                                    (b1fb865dba)
  ✘  00074 swift typeloc iserror                                  (6f47bfada8)
  ✘  00081 resolvetypedecl                                        (d4742d8942)
  ✘  00098 swift constraints constraintgraph addconstraint        (548c25f637)
  ✘  00103 swift constraints constraintsystem diagnosefailurefrom (2e47c97642)
  ✘  00115 swift declcontext lookupqualified                      (4fdbf92f4c)
  ✘  00118 swift dependentgenerictyperesolver resolvegenerictypep (59e3d06164)
  ✘  00120 swift derivedconformance deriveequatable               (58067149ae)
  ✘  00137 swift modulefile gettype                               (d7f69d168c)
  ✘  00162 swift type transform                                   (33d210153c)
  ✘  00177 swift constraints constraintsystem opengeneric         (125366b8f2)
  ✘  00191 swift astprinter printtextimpl                         (cb3f68524e)
  ✘  00211 swift completegenerictyperesolver resolvedependentmemb (5e1d4775cd)
  ✘  00221 swift constraints constraintgraph removeconstraint     (80a94598b6)
  ✘  00227 swift clangimporter implementation getknownobjcmethod  (67c65bdc3b)
  ✘  00228 swift clangimporter loadextensions                     (61c750aaa6)
  ✘  00238 llvm foldingsetnodeid operator                         (dd30213f15)
  ✘  00244 swift nominaltypedecl getdeclaredtypeincontext         (569f52db19)
  ✘  00247 swift metatypetype get                                 (296c70e4d3)
  ✘  00248 swift clangmoduleunit getimportedmodules               (503dc7a587)
  ✘  00259 swift lexer leximpl                                    (8e252b7afa)
  ✘  00260 swift declname printpretty                             (1069058391)
  ✘  00261 swift parser parseexprpostfix                          (ba09bb953c)
  ✘  00265 swift typechecker validatedecl                         (bad7944d5f)
  ✘  00273 swift constraints constraintgraphnode getadjacency     (48e3750ae2)
  ✘  00274 swift typechecker checkinheritanceclause               (0fdb825fb4)
  ✘  00275 swift parser parseexprpostfix                          (17f03fd371)
  ✘  00279 swift nominaltypedecl getdeclaredtypeincontext         (a9a7a2ce59)
  ✘  00280 llvm foldingset swift classtype nodeequals             (5f3e5350b2)
  ✘  00283 swift typebase isspecialized                           (12ea39aac4)
  ✘  00284 swift modulefile maybereadconformance                  (018212635a)
  ✘  00286 resolvetypedecl                                        (dc8e075c74)
  ✘  00287 clang astcontext getobjcinterfacetype                  (faf0123378)
  ✘  00288 swift typebase getcanonicaltype                        (274adfcd42)
  ✘  00294 swift constraints constraintsystem gettypeofmemberrefe (0a848f28a4)
     lots of fuzzing crashes omitted for README.md readability …
  ✘  22677 swift valuedecl getlocaldiscriminator                  (9a14714fcc)
  ✘  22678 swift astcontext getsubstitutions                      (85dc7b5dac)
  ✘  22679 swift constraints constraintsystem simplify            (6d848ce62a)
  ✘  22680 swift unboundgenerictype get                           (a13fd07bd9)
  ✘  22681 swift typebase getcanonicaltype                        (9fe80bfbb4)
  ✘  22682 swift lexer lexunicodeescape                           (095b725d34)
  ✘  22683 swift constraints constraintgraph removeconstraint     (06c3d5742d)
  ✘  22684 swift inflightdiagnostic                               (241a8fd8af)
  ✘  22685 no stacktrace                                          (09e41178e3)
  ✘  22686 swift parser parseinheritance                          (f4c0c9fb46)
  ✘  22687 llvm foldingset swift classtype nodeequals             (ed3b3a7dde)
  ✘  22688 no stacktrace                                          (8617f1138b)
  ✘  22689 no stacktrace                                          (83553ee487)
  ✘  22690 llvm densemap swift cantype                            (8efc44353b)
  ✘  22691 swift polymorphicfunctiontype get                      (a81a38f505)
  ✘  22692 swift typebase gettypeofmember                         (ccf17ddcee)
  ✘  22693 swift parser parsedeclimport                           (b1371e1f92)
  ✘  22694 swift valuedecl getoverloadsignature                   (9faad39527)
  ✘  22695 swift lexer leximpl                                    (32bad46f50)
  ✘  22696 swift clangmoduleunit getimportedmodules               (4986ae3d10)
  ✘  22697 swift substitutedtype get                              (c488d6b879)
  ✘  22698 swift archetypetype setnestedtypes                     (3c72841ab7)
  ✘  22699 swift constraints constraintgraph change undo          (977bc9eb63)
  ✘  22700 swift nominaltype get                                  (68b4e3108b)
  ✘  22701 swift parser parsematchingpatternvarorval              (673eb2bc13)
  ✘  22702 swift sequenceexpr create                              (6d87e64816)
  ✘  22703 swift mangle mangler mangletype                        (7b6c17ad61)
  ✘  22704 swift typechecker typecheckpattern                     (8856ea51f7)
  ✘  22705 swift lexer getlocforendoftoken                        (a8d83d144a)
  ✘  22706 swift constraints constraintsystem getconstraintlocato (ade5a508e0)
  ✘  22707 swift genericfunctiontype get                          (980f9160ec)
  ✘  22708 swift constraints constraintsystem simplifymemberconst (97bf9d36d6)
  ✘  22709 swift genericfunctiontype substgenericargs             (46ec9f778f)
  ✘  22710 swift tupletype get                                    (215643522d)
  ✘  22711 swift modulefile loadextensions                        (b9d2c99bb8)
  ✘  22712 swift valuedecl getoverloadsignature                   (9d701f3e68)
  ✘  22713 swift performtypechecking                              (160fdb2710)
  ✘  22714 vtable                                                 (8eca87ad41)
  ✘  22715 swift constraints constraintlocator profile            (e0ba1f3956)
  ✘  22716 swift valuedecl getoverloadsignature                   (08db70f90a)
  ✘  22717 swift archetypebuilder resolvearchetype                (0130721f4a)
  ✘  22718 swift typechecker applygenericarguments                (3073263b2a)
  ✘  22719 swift polymorphicfunctiontype get                      (ed54e6a2dd)
  ✘  22720 swift astcontext createtrivialsubstitutions            (02300f7081)
  ✘  22721 substituteinputsugarargumenttype                       (d632d3688c)

== Crashes marked as fixed in previous releases ==

  ✓  00001 swift typeloc iserror
  ✓  00002 no stacktrace
  ✓  00003 profilearchetypeconstraints
  ✓  00004 no stacktrace
  ✓  00005 no stacktrace
  ✓  00006 swift mangle mangler manglecontext
  ✓  00007 convenience init in extension
  ✓  00008 llvm foldingset llvm attributesetnode nodeequals
  ✓  00009 class referencing protocol referencing class
  ✓  00010 circular protocol reference
  ✓  00011 swift nominaltypedecl getprotocols
  ✓  00012 emitdirecttypemetadataref
  ✓  00013 llvm getelementptrinst getindexedtype
  ✓  00014 enum in generic type
  ✓  00015 no stacktrace
  ✓  00016 swift typebase getcanonicaltype
  ✓  00017 llvm foldingset llvm attributesetnode nodeequals
  ✓  00018 swift irgen emitpolymorphicarguments
  ✓  00019 llvm instvisitor
  ✓  00021 swift type walk
  ✓  00022 no stacktrace
  ✓  00024 emitdirecttypemetadataref
  ✓  00025 no stacktrace
  ✓  00027 void map over sequence
  ✓  00028 extension property defined in library
  ✓  00029 class with anyobject type constraint
  ✓  00030 string as extensibe collection
  ✓  00032 swift irgen irgenfunction emittypemetadataref
  ✓  00034 swift typebase getcanonicaltype
  ✓  00035 cerror
  ✓  00036 szone malloc should clear
  ✓  00038 hang on init of recursive generic type
  ✓  00039 string join
  ✓  00040 std function func swift constraints solution computesu
  ✓  00042 nested pattern match with type cast
  ✓  00044 string range subscript
  ✓  00045 swift lowering adjustfunctiontype
  ✓  00046 any array containing ints
  ✓  00047 emitdirecttypemetadataref
  ✓  00050 protocols with circular typealiases
  ✓  00051 resolvetypedecl
  ✓  00053 std function func swift type subst
  ✓  00059 fold sequence
  ✓  00060 adjust function type
  ✓  00062 ioctl
  ✓  00064 bool
  ✓  00065 cerror
  ✓  00067 szone malloc should clear
  ✓  00068 foldsequence
  ✓  00070 getgenericparam
  ✓  00072 llvm bitstreamcursor readrecord
  ✓  00075 llvm foldingset swift boundgenerictype nodeequals
  ✓  00076 llvm foldingset swift constraints constraintlocator no
  ✓  00078 llvm foldingset swift tupletype nodeequals
  ✓  00079 llvm ondiskchainedhashtable swift modulefile decltable
  ✓  00080 llvm smallvectorimpl swift diagnosticargument operator
  ✓  00082 std function func containsprotocolself
  ✓  00085 swift typechecker typecheckpattern
  ✓  00086 std function func swift type subst
  ✓  00087 swift archetypebuilder resolvearchetype
  ✓  00088 swift archetypetype getnestedtype
  ✓  00089 swift archetypetype setnestedtypes
  ✓  00090 swift astcontext getidentifier
  ✓  00092 swift availabilityattr isunavailable
  ✓  00094 swift bracestmt create
  ✓  00095 swift clangimporter implementation mergepropinfointoac
  ✓  00096 swift clangmoduleunit getadaptermodule
  ✓  00099 swift constraints constraintgraph change undo
  ✓  00101 swift constraints constraintsystem applysolution
  ✓  00102 swift constraints constraintsystem assignfixedtype
  ✓  00104 swift constraints constraintsystem finalize
  ✓  00111 swift constraints constraintsystem simplifyconstraint
  ✓  00113 swift constraints constraintsystem solve
  ✓  00116 swift declname printpretty
  ✓  00121 swift diagnosticengine diagnose
  ✓  00122 swift typechecker coercepatterntotype
  ✓  00123 swift functiontype get
  ✓  00125 swift genericparamlist addnestedarchetypes
  ✓  00127 swift inflightdiagnostic
  ✓  00128 swift lexer getlocforendoftoken
  ✓  00129 swift lexer lexidentifier
  ✓  00132 swift lexer lexoperatoridentifier
  ✓  00136 swift modulefile getimportedmodules
  ✓  00140 swift nominaltypedecl computetype
  ✓  00141 swift nominaltypedecl getextensions
  ✓  00143 swift parentype get
  ✓  00146 swift parser parseexpridentifier
  ✓  00147 swift parser parseexprstringliteral
  ✓  00149 swift typechecker callwitness
  ✓  00150 swift parser parseparameterclause
  ✓  00151 swift parser parsetype
  ✓  00153 swift parser parsetypesimple
  ✓  00154 swift printingdiagnosticconsumer handlediagnostic
  ✓  00155 swift protocoldecl requiresclassslow
  ✓  00161 swift tupletype get
  ✓  00163 swift type walk
  ✓  00164 swift typebase getcanonicaltype
  ✓  00165 swift typebase getdesugaredtype
  ✓  00167 swift typebase isexistentialtype
  ✓  00173 swift typealiasdecl typealiasdecl
  ✓  00174 swift scopeinfo addtoscope
  ✓  00184 swift modulefile lookupvalue
  ✓  00187 swift lowering typeconverter getfunctiontypewithcaptur
  ✓  00189 swift tuplepattern create
  ✓  00190 swift constraints constraintgraph unbindtypevariable
  ✓  00192 swift astcontext setconformsto
  ✓  00193 swift typebase gettypevariables
  ✓  00194 swift parser parseexprsequence
  ✓  00195 swift namelookup lookupinmodule
  ✓  00197 swift performstmtdiagnostics
  ✓  00198 swift constraints constraintgraph gatherconstraints
  ✓  00199 swift optional swift diagnostic operator
  ✓  00200 swift parser parsestmtreturn
  ✓  00201 swift parser parsetoken
  ✓  00204 swift parser parsedeclprotocol
  ✓  00205 swift exprhandle get
  ✓  00210 swift constraints constraintsystem simplifyconformstoc
  ✓  00212 swift constraints solution simplifytype
  ✓  00213 swift typechecker validatetype
  ✓  00215 swift optional swift infixoperatordecl
  ✓  00217 swift associatedtypedecl associatedtypedecl
  ✓  00220 llvm foldingsetimpl findnodeorinsertpos
  ✓  00222 swift modulefile modulefile
  ✓  00224 swift generictypeparamtype get
  ✓  00225 swift classdecl recordobjcmember
  ✓  00229 getarchetypesubstitution
  ✓  00230 llvm foldingset swift structtype nodeequals
  ✓  00231 swift constraints constraintlocator profile
  ✓  00232 swift lookupresult filter
  ✓  00235 swift genericparamlist print
  ✓  00236 swift typechecker typecheckforeachbinding
  ✓  00237 swift declrefexpr setspecialized
  ✓  00243 transform transform
  ✓  00249 swift nominaltypedecl computeinterfacetype
  ✓  00250 swift parser consumestartinggreater
  ✓  00251 swift constraints constraintsystem addconstraint
  ✓  00252 swift astcontext getidentifier
  ✓  00253 swift constraints constraintsystem constraintsystem
  ✓  00254 swift typechecker resolvetypeincontext
  ✓  00255 swift tuplepattern createsimple
  ✓  00256 swift tupleexpr create
  ✓  00257 swift partialgenerictypetoarchetyperesolver resolvegen
  ✓  00258 swift constraints constraintsystem resolveoverload
  ✓  00262 swift camel case getfirstword
  ✓  00263 swift constraints constraintsystem opentype
  ✓  00264 isvalididentifiercontinuationcodepoint
  ✓  00266 swift parser parseexprorstmt
  ✓  00267 swift parser parseexprcallsuffix
  ✓  00268 swift typechecker typecheckexpression
  ✓  00270 swift arraysemanticcall hoistorcopy
** Results: 5493 of 5643 tests crashed the compiler **

```

License
=======
All files in this repository are distributed under the terms of the MIT license (see <a href="https://github.com/practicalswift/swift-compiler-crashes/blob/master/LICENSE">LICENSE</a>).
