as yet unclassified
testsunnotsa01
	"
    A non-standalone document is valid if declared as such.
	 See XML Spec. 1.0 section: 2.9"
	|  correctAnswer  result |

	(self class shouldSkipTests and: [testsToSkip includes: 'not-sa01'])
		ifTrue:[^nil].
	correctAnswer := (self class sourcesunvalidoutnotsa01xml).

	[result := self runTest:self class sourcesunvalidnotsa01xml ]
		on: self warningSignal
		do: [:warn | warn resume].

	self assert: correctAnswer = result.