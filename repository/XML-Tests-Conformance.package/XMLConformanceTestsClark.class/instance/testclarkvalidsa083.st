tests
testclarkvalidsa083
	"
    Tests that an external PE may be defined (but not referenced).
	 See XML Spec. 1.0 section: 4.2 [72]"
	|  correctAnswer  result |

	(self class shouldSkipTests and: [testsToSkip includes: 'valid-sa-083'])
		ifTrue:[^nil].
	correctAnswer := (self class  sourcexmltestvalidsaout083xml)  .

	[result := self runTest:self   class sourcexmltestvalidsa083xml ]
		on: self warningSignal
		do: [:warn | warn resume].

	self assert: correctAnswer = result.