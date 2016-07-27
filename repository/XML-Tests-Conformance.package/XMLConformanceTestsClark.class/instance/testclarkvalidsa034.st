tests
testclarkvalidsa034
	"
    Test demonstrates the correct syntax for an Empty element tag. 
	 See XML Spec. 1.0 section: 3.1 [44]"
	|  correctAnswer  result |

	(self class shouldSkipTests and: [testsToSkip includes: 'valid-sa-034'])
		ifTrue:[^nil].
	correctAnswer := (self class  sourcexmltestvalidsaout034xml)  .

	[result := self runTest:self  class  sourcexmltestvalidsa034xml ]
		on: self warningSignal
		do: [:warn | warn resume].

	self assert: correctAnswer = result.