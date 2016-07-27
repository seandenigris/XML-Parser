tests
testclarkvalidsa057
	"
    Test demonstrates an element content model whose element can occur zero or more times. 
	 See XML Spec. 1.0 section: 3.2.1 [47]"
	|  correctAnswer  result |

	(self class shouldSkipTests and: [testsToSkip includes: 'valid-sa-057'])
		ifTrue:[^nil].
	correctAnswer := (self  class sourcexmltestvalidsaout057xml)  .

	[result := self runTest:self  class  sourcexmltestvalidsa057xml ]
		on: self warningSignal
		do: [:warn | warn resume].

	self assert: correctAnswer = result.