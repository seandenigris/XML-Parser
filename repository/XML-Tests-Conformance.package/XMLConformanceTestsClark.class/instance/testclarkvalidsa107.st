tests
testclarkvalidsa107
	"
    Basically an output test, this requires a CDATA attribute
    with a return character to be passed through as one space.
	 See XML Spec. 1.0 section: 3.3.3"
	|  correctAnswer  result |

	(self class shouldSkipTests and: [testsToSkip includes: 'valid-sa-107'])
		ifTrue:[^nil].
	correctAnswer := (self sourcexmltestvalidsaout107xml).

	[result := self runTest:self sourcexmltestvalidsa107xml ]
		on: self warningSignal
		do: [:warn | warn resume].

	self assert: correctAnswer = result.