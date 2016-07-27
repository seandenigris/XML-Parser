tests
testclarkvalidsa015
	"
    Test demonstrates that all upper case letters are valid for the Attribute in a Start-tag. 
	 See XML Spec. 1.0 section: 2.3 3.1 [13] [40]"
	|  correctAnswer  result |

	(self class shouldSkipTests and: [testsToSkip includes: 'valid-sa-015'])
		ifTrue:[^nil].
	correctAnswer := (self  class  sourcexmltestvalidsaout015xml)  .

	[result := self runTest:self   class  sourcexmltestvalidsa015xml ]
		on: self warningSignal
		do: [:warn | warn resume].

	self assert: correctAnswer = result.