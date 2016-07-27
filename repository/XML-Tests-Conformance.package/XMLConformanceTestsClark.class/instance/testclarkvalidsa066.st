tests
testclarkvalidsa066
	"
    Expands a CDATA attribute with a character reference.
	 See XML Spec. 1.0 section: 4.1 [66]"
	|  correctAnswer  result |

	(self class shouldSkipTests and: [testsToSkip includes: 'valid-sa-066'])
		ifTrue:[^nil].
	correctAnswer := (self class  sourcexmltestvalidsaout066xml)  .

	[result := self runTest:self   class sourcexmltestvalidsa066xml ]
		on: self warningSignal
		do: [:warn | warn resume].

	self assert: correctAnswer = result.