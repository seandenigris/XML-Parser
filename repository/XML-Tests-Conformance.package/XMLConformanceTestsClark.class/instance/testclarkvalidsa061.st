tests
testclarkvalidsa061
	"
    Test demonstrates the use of decimal Character References within element content. 
	 See XML Spec. 1.0 section: 4.1 [66]"
	|  correctAnswer  result |

	(self class shouldSkipTests and: [testsToSkip includes: 'valid-sa-061'])
		ifTrue:[^nil].
	correctAnswer := (self  class sourcexmltestvalidsaout061xml)  .

	[result := self runTest:self  class  sourcexmltestvalidsa061xml ]
		on: self warningSignal
		do: [:warn | warn resume].

	self assert: correctAnswer = result.