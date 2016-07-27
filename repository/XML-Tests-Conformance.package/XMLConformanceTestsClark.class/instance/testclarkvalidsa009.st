tests
testclarkvalidsa009
	"
    Test demonstrates that PubidChar can be used for element content. 
	 See XML Spec. 1.0 section: 2.3 3.1 [43]"
	|  correctAnswer  result |

	(self class shouldSkipTests and: [testsToSkip includes: 'valid-sa-009'])
		ifTrue:[^nil].
	correctAnswer := (self class  sourcexmltestvalidsaout009xml)  .

	[result := self runTest:self   class sourcexmltestvalidsa009xml ]
		on: self warningSignal
		do: [:warn | warn resume].

	self assert: correctAnswer = result.