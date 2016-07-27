tests
testclarkvalidsa113
	"
     Test demonstrates that it is not an error to have attributes declared for an element not itself declared.
	 See XML Spec. 1.0 section: 3.3 [52][53]"
	|  correctAnswer  result |

	(self class shouldSkipTests and: [testsToSkip includes: 'valid-sa-113'])
		ifTrue:[^nil].
	correctAnswer := (self class  sourcexmltestvalidsaout113xml)  .

	[result := self runTest:self  class  sourcexmltestvalidsa113xml ]
		on: self warningSignal
		do: [:warn | warn resume].

	self assert: correctAnswer = result.