as yet unclassified
testsundtd01
	"
    Comments don't get parameter entity expansion
	 See XML Spec. 1.0 section: 2.5 [15]"
	|  correctAnswer  result |

	(self class shouldSkipTests and: [testsToSkip includes: 'dtd01'])
		ifTrue:[^nil].
	correctAnswer := (self class sourcesunvalidoutdtd01xml) .

	[result := self runTest: self class sourcesunvaliddtd01xml ]
		on: self warningSignal
		do: [:warn | warn resume].

	self assert: correctAnswer = result.