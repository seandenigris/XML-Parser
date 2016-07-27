as yet unclassified
testsunsa05
	"
    Like sa01 but this document is standalone
    since it has no optional whitespace.
    On output, requires notations to be correctly reported.
    
	 See XML Spec. 1.0 section: 2.9 [32]"
	|  correctAnswer  result |

	(self class shouldSkipTests and: [testsToSkip includes: 'sa05'])
		ifTrue:[^nil].
	correctAnswer := (self class sourcesunvalidoutsa05xml).

	[result := self runTest:self class sourcesunvalidsa05xml ]
		on: self warningSignal
		do: [:warn | warn resume].
	self assert: correctAnswer = result.