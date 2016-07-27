tests
testclarkvalidsa054
	"
    Test demonstrates that extra whitespace within Start-tags and End-tags are nomalized into single spaces. 
	 See XML Spec. 1.0 section: 3.1 [40] [42]"
	|  correctAnswer  result |

	(self class shouldSkipTests and: [testsToSkip includes: 'valid-sa-054'])
		ifTrue:[^nil].
	correctAnswer := (self  class sourcexmltestvalidsaout054xml)  .

	[result := self runTest:self  class  sourcexmltestvalidsa054xml ]
		on: self warningSignal
		do: [:warn | warn resume].

	self assert: correctAnswer = result.