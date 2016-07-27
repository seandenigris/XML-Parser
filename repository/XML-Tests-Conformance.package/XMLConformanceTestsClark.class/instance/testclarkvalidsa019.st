tests
testclarkvalidsa019
	"
    Test demonstrates that CDATA sections are valid element content and that
ampersands may occur in their literal form. 
	 See XML Spec. 1.0 section: 2.7 3.1 [18] [43]"
	|  correctAnswer  result |

	(self class shouldSkipTests and: [testsToSkip includes: 'valid-sa-019'])
		ifTrue:[^nil].
	correctAnswer := (self  class  sourcexmltestvalidsaout019xml)  .

	[result := self runTest:self  class  sourcexmltestvalidsa019xml ]
		on: self warningSignal
		do: [:warn | warn resume].

	self assert: correctAnswer = result.