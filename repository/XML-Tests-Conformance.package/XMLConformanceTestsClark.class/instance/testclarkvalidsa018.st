tests
testclarkvalidsa018
	"
    Test demonstrates that CDATA sections are valid element content. 
	 See XML Spec. 1.0 section: 2.7 3.1 [18] [43]"
	|  correctAnswer  result |

	(self class shouldSkipTests and: [testsToSkip includes: 'valid-sa-018'])
		ifTrue:[^nil].
	correctAnswer := (self  class  sourcexmltestvalidsaout018xml)  .

	[result := self runTest:self  class   sourcexmltestvalidsa018xml ]
		on: self warningSignal
		do: [:warn | warn resume].

	self assert: correctAnswer = result.