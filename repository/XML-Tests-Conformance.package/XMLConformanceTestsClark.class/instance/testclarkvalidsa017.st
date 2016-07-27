tests
testclarkvalidsa017
	"
    Test demonstrates that Processing Instructions are valid element content and there can be more than one. 
	 See XML Spec. 1.0 section: 2.6 3.1 [16] [43]"
	|  correctAnswer  result |

	(self class shouldSkipTests and: [testsToSkip includes: 'valid-sa-017'])
		ifTrue:[^nil].
	correctAnswer := (self  class  sourcexmltestvalidsaout017xml)  .

	[result := self runTest:self  class  sourcexmltestvalidsa017xml ]
		on: self warningSignal
		do: [:warn | warn resume].

	self assert: correctAnswer = result.