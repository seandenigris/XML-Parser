tests
testclarkvalidsa117
	"
    Test demonstrates that entity expansion is done while processing entity declarations.  
	 See XML Spec. 1.0 section: 4.5"
	|  correctAnswer  result |

	(self class shouldSkipTests and: [testsToSkip includes: 'valid-sa-117'])
		ifTrue:[^nil].
	correctAnswer := (self  class sourcexmltestvalidsaout117xml)  .

	[result := self runTest: (self   class sourcexmltestvalidsa117xml )]
		on: self warningSignal
		do: [:warn | warn resume].

	self assert: correctAnswer = result.