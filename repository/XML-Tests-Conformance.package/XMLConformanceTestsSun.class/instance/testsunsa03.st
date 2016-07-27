as yet unclassified
testsunsa03
	"
    A document may be marked 'standalone' if any
    the defined entities need expanding are internal,
    and no attributes need defaulting or normalization.
    On output, requires notations to be correctly reported.
    
	 See XML Spec. 1.0 section: 2.9 [32]"
	|  correctAnswer  result |

	(self class shouldSkipTests and: [testsToSkip includes: 'sa03'])
		ifTrue:[^nil].
	correctAnswer := (self class sourcesunvalidoutsa03xml).

	[result := self runTest:self class sourcesunvalidsa03xml ]
		on: self warningSignal
		do: [:warn | warn resume].

	self assert: correctAnswer = result.