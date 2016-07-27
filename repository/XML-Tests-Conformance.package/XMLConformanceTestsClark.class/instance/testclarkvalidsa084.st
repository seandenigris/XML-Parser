tests
testclarkvalidsa084
	"
    Test demonstrates that although whitespace can be used to set apart markup for greater readability it is not necessary. 
	 See XML Spec. 1.0 section: 2.10"
	|  correctAnswer  result |

	(self class shouldSkipTests and: [testsToSkip includes: 'valid-sa-084'])
		ifTrue:[^nil].
	correctAnswer := (self  class sourcexmltestvalidsaout084xml)  .

	[result := self runTest:self   class sourcexmltestvalidsa084xml ]
		on: self warningSignal
		do: [:warn | warn resume].

	self assert: correctAnswer = result.