tests
testclarkvalidsa016
	"
    Test demonstrates that Processing Instructions are valid element content. 
	 See XML Spec. 1.0 section: 2.6 3.1 [16] [43]"
	|  correctAnswer  result |

	(self class shouldSkipTests and: [testsToSkip includes: 'valid-sa-016'])
		ifTrue:[^nil].
	correctAnswer := (self  class  sourcexmltestvalidsaout016xml)  .

	[result := self runTest:self  class  sourcexmltestvalidsa016xml ]
		on: self warningSignal
		do: [:warn | warn resume].

	self assert: correctAnswer = result.