tests
testclarkvalidsa109
	"
    Test demonstrates that an attribute can have a null value. 
	 See XML Spec. 1.0 section: 2.3 3.1 [10][40][41]"
	|  correctAnswer  result |

	(self class shouldSkipTests and: [testsToSkip includes: 'valid-sa-109'])
		ifTrue:[^nil].
	correctAnswer := (self  class sourcexmltestvalidsaout109xml)  .

	[result := self runTest:self  class  sourcexmltestvalidsa109xml ]
		on: self warningSignal
		do: [:warn | warn resume].

	self assert: correctAnswer = result.