as yet unclassified
testsunnotsa02
	"
    A non-standalone document is valid if declared as such.
	 See XML Spec. 1.0 section: 2.9"
	|  correctAnswer  result |

	(self class shouldSkipTests and: [testsToSkip includes: 'not-sa02'])
		ifTrue:[^nil].
	correctAnswer := (self class sourcesunvalidoutnotsa02xml).

	[result := self runTest:self class sourcesunvalidnotsa02xml ]
		on: self warningSignal
		do: [:warn | warn resume].

	self assert: correctAnswer = result.