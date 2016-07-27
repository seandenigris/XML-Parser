as yet unclassified
testsunsa04
	"
    Like sa03 but relies on attribute
    defaulting defined in the internal subset.
    On output, requires notations to be correctly reported.
    
	 See XML Spec. 1.0 section: 2.9 [32]"
	|  correctAnswer  result |

	(self class shouldSkipTests and: [testsToSkip includes: 'sa04'])
		ifTrue:[^nil].
	correctAnswer := (self class sourcesunvalidoutsa04xml).

	[result := self runTest:self class sourcesunvalidsa04xml ]
		on: self warningSignal
		do: [:warn | warn resume].
	self assert: correctAnswer = result.