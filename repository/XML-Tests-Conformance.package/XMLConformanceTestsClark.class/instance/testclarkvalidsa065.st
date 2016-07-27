tests
testclarkvalidsa065
	"
    Tests ability to define an internal entity which can't
    legally be expanded (contains an unquoted <).
	 See XML Spec. 1.0 section: 4.5"
	|  correctAnswer  result |

	(self class shouldSkipTests and: [testsToSkip includes: 'valid-sa-065'])
		ifTrue:[^nil].
	correctAnswer := (self class  sourcexmltestvalidsaout065xml)  .

	[result := self runTest:self   class  sourcexmltestvalidsa065xml ]
		on: self warningSignal
		do: [:warn | warn resume].

	self assert: correctAnswer = result.