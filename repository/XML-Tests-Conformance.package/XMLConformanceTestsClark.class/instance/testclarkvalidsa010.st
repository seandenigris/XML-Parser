tests
testclarkvalidsa010
	"
    Test demonstrates that whitespace is valid after the Attribute in a Start-tag. 
	 See XML Spec. 1.0 section: 3.1 [40]"
	|  correctAnswer  result |

	(self class shouldSkipTests and: [testsToSkip includes: 'valid-sa-010'])
		ifTrue:[^nil].
	correctAnswer := (self class  sourcexmltestvalidsaout010xml)  .

	[result := self runTest:self  class  sourcexmltestvalidsa010xml ]
		on: self warningSignal
		do: [:warn | warn resume].

	self assert: correctAnswer = result.