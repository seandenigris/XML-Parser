as yet unclassified
testsunsa02
	"
    A document may be marked 'standalone' if any
	attributes that need normalization are
	defined within the internal DTD subset.
	 See XML Spec. 1.0 section: 2.9 [32]"
	|  correctAnswer  result |

	(self class shouldSkipTests and: [testsToSkip includes: 'sa02'])
		ifTrue:[^nil].
	correctAnswer := (self class sourcesunvalidoutsa02xml).

	[result := self runTest:self class sourcesunvalidsa02xml ]
		on: self warningSignal
		do: [:warn | warn resume].

	self assert: correctAnswer = result.