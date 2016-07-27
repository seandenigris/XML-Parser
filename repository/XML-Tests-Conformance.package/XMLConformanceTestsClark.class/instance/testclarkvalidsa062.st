tests
testclarkvalidsa062
	"
    Test demonstrates the use of hexadecimal Character References within element.  
	 See XML Spec. 1.0 section: 4.1 [66]"
	|  correctAnswer  result |

	(self class shouldSkipTests and: [testsToSkip includes: 'valid-sa-062'])
		ifTrue:[^nil].
	correctAnswer := (self class  sourcexmltestvalidsaout062xml)  .

	[result := self runTest:self  class  sourcexmltestvalidsa062xml ]
		on: self warningSignal
		do: [:warn | warn resume].

	self assert: correctAnswer = result.