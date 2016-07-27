tests
testclarkvalidsa095
	"
    Basically an output test, this requires extra whitespace
    to be normalized into a single space character in an
    attribute of type NMTOKENS.
	 See XML Spec. 1.0 section: 3.3.3"
	|  correctAnswer  result |

	(self class shouldSkipTests and: [testsToSkip includes: 'valid-sa-095'])
		ifTrue:[^nil].
	correctAnswer := (self class  sourcexmltestvalidsaout095xml)  .

	[result := self runTest:self  class  sourcexmltestvalidsa095xml ]
		on: self warningSignal
		do: [:warn | warn resume].

	self assert: correctAnswer = result.