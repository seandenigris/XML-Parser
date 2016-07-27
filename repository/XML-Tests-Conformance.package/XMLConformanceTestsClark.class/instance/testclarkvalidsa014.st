tests
testclarkvalidsa014
	"
    Test demonstrates that all lower case letters are valid for the Attribute in a Start-tag. 
	 See XML Spec. 1.0 section: 2.3 3.1 [13] [40]"
	|  correctAnswer  result |

	(self class shouldSkipTests and: [testsToSkip includes: 'valid-sa-014'])
		ifTrue:[^nil].
	correctAnswer := (self  class  sourcexmltestvalidsaout014xml)  .

	[result := self runTest:self  class  sourcexmltestvalidsa014xml ]
		on: self warningSignal
		do: [:warn | warn resume].

	self assert: correctAnswer = result.