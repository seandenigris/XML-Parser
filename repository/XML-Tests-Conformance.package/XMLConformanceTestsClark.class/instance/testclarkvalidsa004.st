tests
testclarkvalidsa004
	"
    Test demonstrates a valid attribute specification within a Start-tag. 
	 See XML Spec. 1.0 section: 3.1 [41]"
	|  correctAnswer  result |

	(self class shouldSkipTests and: [testsToSkip includes: 'valid-sa-004'])
		ifTrue:[^nil].
	correctAnswer := (self class sourcexmltestvalidsaout004xml)  .

	[result := self runTest:self  class  sourcexmltestvalidsa004xml ]
		on: self warningSignal
		do: [:warn | warn resume].

	self assert: correctAnswer = result.