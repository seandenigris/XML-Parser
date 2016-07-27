as yet unclassified
testsundtd00
	"
    Tests parsing of alternative forms of text-only mixed
	content declaration.
	 See XML Spec. 1.0 section: 3.2.2 [51]"
	|  correctAnswer  result |

	(self class shouldSkipTests and: [testsToSkip includes: 'dtd00'])
		ifTrue:[^nil].
	correctAnswer := (self class sourcesunvalidoutdtd00xml) .

	[result := self runTest: self class sourcesunvaliddtd00xml ]
		on: self warningSignal
		do: [:warn | warn resume].

	self assert: correctAnswer = result.