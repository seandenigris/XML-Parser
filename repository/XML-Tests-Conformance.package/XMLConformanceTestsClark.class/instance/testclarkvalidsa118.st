tests
testclarkvalidsa118
	"
    Test demonstrates that entity expansion is done while processing entity declarations. 
	 See XML Spec. 1.0 section: 4.5"
	|  correctAnswer  result |

	(self class shouldSkipTests and: [testsToSkip includes: 'valid-sa-118'])
		ifTrue:[^nil].
	correctAnswer := (self class  sourcexmltestvalidsaout118xml)  .

	[result := self runTest: self   class sourcexmltestvalidsa118xml ]
		on: self warningSignal
		do: [:warn | warn resume].

	self assert: correctAnswer = result.