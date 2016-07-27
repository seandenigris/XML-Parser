tests
testclarkvalidsa001
	"
    Test demonstrates an Element Type Declaration with Mixed Content. 
	 See XML Spec. 1.0 section: 3.2.2 [51]"
	|  correctAnswer  result |

	(self class shouldSkipTests and: [testsToSkip includes: 'valid-sa-001'])
		ifTrue:[^nil].
	correctAnswer := (self class sourcexmltestvalidsaout001xml) .

	[result := self runTest:self  class  sourcexmltestvalidsa001xml ]
		on: self warningSignal
		do: [:warn | warn resume].

	self assert: correctAnswer = result.