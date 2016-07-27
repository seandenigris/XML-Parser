tests
testclarkvalidsa102
	"
    Test demonstrates that a CDATA attribute can pass a double quote as its value. 
	 See XML Spec. 1.0 section: 3.3.3"
	|  correctAnswer  result |

	(self class shouldSkipTests and: [testsToSkip includes: 'valid-sa-102'])
		ifTrue:[^nil].
	correctAnswer := (self class  sourcexmltestvalidsaout102xml)  .

	[result := self runTest:self  class  sourcexmltestvalidsa102xml ]
		on: self warningSignal
		do: [:warn | warn resume].

	self assert: correctAnswer = result.