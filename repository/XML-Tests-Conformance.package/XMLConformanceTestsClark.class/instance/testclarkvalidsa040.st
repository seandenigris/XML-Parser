tests
testclarkvalidsa040
	"
    Test demonstrates an Attribute List declaration that uses a StringType as the AttType. 
	 See XML Spec. 1.0 section: 3.3 3.3.1 [52] [54]"
	|  correctAnswer  result |

	(self class shouldSkipTests and: [testsToSkip includes: 'valid-sa-040'])
		ifTrue:[^nil].
	correctAnswer := (self class  sourcexmltestvalidsaout040xml)  .

	[result := self runTest:self  class  sourcexmltestvalidsa040xml ]
		on: self warningSignal
		do: [:warn | warn resume].

	self assert: correctAnswer = result.