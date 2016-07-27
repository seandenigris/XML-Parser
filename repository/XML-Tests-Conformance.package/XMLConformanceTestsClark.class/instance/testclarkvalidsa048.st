tests
testclarkvalidsa048
	"
    Test demonstrates that character data is valid element content. 
	 See XML Spec. 1.0 section: 2.4 3.1 [14] [43]"
	|  correctAnswer  result |

	(self class shouldSkipTests and: [testsToSkip includes: 'valid-sa-048'])
		ifTrue:[^nil].
	correctAnswer := (self class  sourcexmltestvalidsaout048xml)  .

	[result := self runTest:self   class  sourcexmltestvalidsa048xml ]
		on: self warningSignal
		do: [:warn | warn resume].

	self assert: correctAnswer = result.