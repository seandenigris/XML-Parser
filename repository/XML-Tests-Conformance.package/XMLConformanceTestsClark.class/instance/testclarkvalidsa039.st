tests
testclarkvalidsa039
	"
    Test demonstrates a valid processing instruction and that it may appear at the beginning of the document. 
	 See XML Spec. 1.0 section: 2.6 [16]"
	|  correctAnswer  result |

	(self class shouldSkipTests and: [testsToSkip includes: 'valid-sa-039'])
		ifTrue:[^nil].
	correctAnswer := (self class  sourcexmltestvalidsaout039xml)  .

	[result := self runTest:self  class  sourcexmltestvalidsa039xml ]
		on: self warningSignal
		do: [:warn | warn resume].

	self assert: correctAnswer = result.