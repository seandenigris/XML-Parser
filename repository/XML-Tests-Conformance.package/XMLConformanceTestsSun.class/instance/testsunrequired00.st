as yet unclassified
testsunrequired00
	"
    Tests the #REQUIRED attribute declaration syntax, and
	the associated validity constraint. 
	 See XML Spec. 1.0 section: 3.3.2 [60]"
	|  correctAnswer  result |

	(self class shouldSkipTests and: [testsToSkip includes: 'required00'])
		ifTrue:[^nil].
	correctAnswer := (self class sourcesunvalidoutrequired00xml)  .

	[result := self runTest:self class sourcesunvalidrequired00xml ]
		on: self warningSignal
		do: [:warn | warn resume].

	self assert: correctAnswer = result.