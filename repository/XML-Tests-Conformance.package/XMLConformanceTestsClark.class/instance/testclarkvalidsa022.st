tests
testclarkvalidsa022
	"
    Test demonstrates that comments are valid element content and that all characters before the double-hypen right angle combination are considered part of thecomment. 
	 See XML Spec. 1.0 section: 2.5 3.1 [15] [43]"
	|  correctAnswer  result |

	(self class shouldSkipTests and: [testsToSkip includes: 'valid-sa-022'])
		ifTrue:[^nil].
	correctAnswer := (self class  sourcexmltestvalidsaout022xml)  .

	[result := self runTest:self  class  sourcexmltestvalidsa022xml ]
		on: self warningSignal
		do: [:warn | warn resume].

	self assert: correctAnswer = result.