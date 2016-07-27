tests
testclarkvalidsa024
	"
    Test demonstrates that Entity References are valid element content and also demonstrates a valid Entity Declaration. 
	 See XML Spec. 1.0 section: 3.1 4.1 [43] [66]"
	|  correctAnswer  result |

	(self class shouldSkipTests and: [testsToSkip includes: 'valid-sa-024'])
		ifTrue:[^nil].
	correctAnswer := (self class  sourcexmltestvalidsaout024xml)  .

	[result := self runTest:self  class  sourcexmltestvalidsa024xml ]
		on: self warningSignal
		do: [:warn | warn resume].

	self assert: correctAnswer = result.