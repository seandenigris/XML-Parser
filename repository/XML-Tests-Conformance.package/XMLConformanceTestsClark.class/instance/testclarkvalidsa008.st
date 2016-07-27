tests
testclarkvalidsa008
	"
    Test demonstrates character references can be used for element content. 
	 See XML Spec. 1.0 section: 2.4 3.1 [43]"
	|  correctAnswer  result |

	(self class shouldSkipTests and: [testsToSkip includes: 'valid-sa-008'])
		ifTrue:[^nil].
	correctAnswer := (self class  sourcexmltestvalidsaout008xml)  .

	[result := self runTest:self   class sourcexmltestvalidsa008xml ]
		on: self warningSignal
		do: [:warn | warn resume].

	self assert: correctAnswer = result.