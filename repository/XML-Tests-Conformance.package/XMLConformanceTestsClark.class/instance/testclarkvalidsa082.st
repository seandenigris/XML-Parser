tests
testclarkvalidsa082
	"
    Tests that an external PE may be defined (but not referenced).
	 See XML Spec. 1.0 section: 4.2 [72]"
	|  correctAnswer  result |

	(self class shouldSkipTests and: [testsToSkip includes: 'valid-sa-082'])
		ifTrue:[^nil].
	correctAnswer := (self class  sourcexmltestvalidsaout082xml)  .

	[result := self runTest:self   class sourcexmltestvalidsa082xml ]
		on: self warningSignal
		do: [:warn | warn resume].

	self assert: correctAnswer = result.