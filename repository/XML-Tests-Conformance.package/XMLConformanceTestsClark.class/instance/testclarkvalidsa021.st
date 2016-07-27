tests
testclarkvalidsa021
	"
    Test demonstrates that comments are valid element content. 
	 See XML Spec. 1.0 section: 2.5 3.1 [15] [43]"
	|  correctAnswer  result |

	(self class shouldSkipTests and: [testsToSkip includes: 'valid-sa-021'])
		ifTrue:[^nil].
	correctAnswer := (self  class sourcexmltestvalidsaout021xml)  .

	[result := self runTest:self  class  sourcexmltestvalidsa021xml ]
		on: self warningSignal
		do: [:warn | warn resume].

	self assert: correctAnswer = result.