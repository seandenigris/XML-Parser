tests
testclarkvalidsa106
	"
    Basically an output test, this requires a CDATA attribute
    with a newline character to be passed through as one space.
	 See XML Spec. 1.0 section: 3.3.3"
	|  correctAnswer  result |

	(self class shouldSkipTests and: [testsToSkip includes: 'valid-sa-106'])
		ifTrue:[^nil].
	correctAnswer := (self  class  sourcexmltestvalidsaout106xml).

	[result := self runTest:self   class sourcexmltestvalidsa106xml ]
		on: self warningSignal
		do: [:warn | warn resume].

	self assert: correctAnswer = result.