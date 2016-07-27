as yet unclassified
testsunnotsa04
	"
    A non-standalone document is valid if declared as such. 
	 See XML Spec. 1.0 section: 2.9"
	|  correctAnswer  result |

	(self class shouldSkipTests and: [testsToSkip includes: 'not-sa04'])
		ifTrue:[^nil].
	correctAnswer := (self class sourcesunvalidoutnotsa04xml).

	[result := self runTest:self class sourcesunvalidnotsa04xml ]
		on: self warningSignal
		do: [:warn | warn resume].

	self assert: correctAnswer = result.