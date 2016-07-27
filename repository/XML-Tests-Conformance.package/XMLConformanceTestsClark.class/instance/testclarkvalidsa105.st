tests
testclarkvalidsa105
	"
    Basically an output test, this requires a CDATA attribute
    with a tab character to be passed through as one space.
	 See XML Spec. 1.0 section: 3.3.3"
	|  correctAnswer  result |

	(self class shouldSkipTests and: [testsToSkip includes: 'valid-sa-105'])
		ifTrue:[^nil].
	correctAnswer := (self sourcexmltestvalidsaout105xml)  contentsOfEntireFile.

	[result := self runTest:self   class sourcexmltestvalidsa105xml ]
		on: self warningSignal
		do: [:warn | warn resume].

	self assert: correctAnswer = result.