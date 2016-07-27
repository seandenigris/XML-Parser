tests
testclarkvalidsa005
	"
    Test demonstrates a valid attribute specification within a Start-tag that
contains whitespace on both sides of the equal sign. 
	 See XML Spec. 1.0 section: 3.1 [40]"
	|  correctAnswer  result |

	(self class shouldSkipTests and: [testsToSkip includes: 'valid-sa-005'])
		ifTrue:[^nil].
	correctAnswer := (self class sourcexmltestvalidsaout005xml)  .

	[result := self runTest:self   class sourcexmltestvalidsa005xml ]
		on: self warningSignal
		do: [:warn | warn resume].

	self assert: correctAnswer = result.