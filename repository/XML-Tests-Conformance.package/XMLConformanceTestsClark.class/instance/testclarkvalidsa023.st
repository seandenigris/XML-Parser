tests
testclarkvalidsa023
	"
    Test demonstrates that Entity References are valid element content. 
	 See XML Spec. 1.0 section: 3.1 [43]"
	|  correctAnswer  result |

	(self class shouldSkipTests and: [testsToSkip includes: 'valid-sa-023'])
		ifTrue:[^nil].
	correctAnswer := (self  class sourcexmltestvalidsaout023xml)  .

	[result := self runTest:self  class  sourcexmltestvalidsa023xml ]
		on: self warningSignal
		do: [:warn | warn resume].

	self assert: correctAnswer = result.