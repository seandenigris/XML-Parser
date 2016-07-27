tests
testclarkvalidsa007
	"
    Test demonstrates numeric character references can be used for element content. 
	 See XML Spec. 1.0 section: 3.1 4.6 [43]"
	|  correctAnswer  result |

	(self class shouldSkipTests and: [testsToSkip includes: 'valid-sa-007'])
		ifTrue:[^nil].
	correctAnswer := (self class sourcexmltestvalidsaout007xml)  .

	[result := self runTest:self   class sourcexmltestvalidsa007xml ]
		on: self warningSignal
		do: [:warn | warn resume].

	self assert: correctAnswer = result.