tests
testclarkvalidsa035
	"
    Test demonstrates that whitespace is permissible after the name in an Empty element tag. 
	 See XML Spec. 1.0 section: 3.1 [44]"
	|  correctAnswer  result |

	(self class shouldSkipTests and: [testsToSkip includes: 'valid-sa-035'])
		ifTrue:[^nil].
	correctAnswer := (self class  sourcexmltestvalidsaout035xml)  .

	[result := self runTest:self  class  sourcexmltestvalidsa035xml ]
		on: self warningSignal
		do: [:warn | warn resume].

	self assert: correctAnswer = result.