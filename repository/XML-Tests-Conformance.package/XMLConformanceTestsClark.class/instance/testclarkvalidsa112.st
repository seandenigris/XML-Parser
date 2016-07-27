tests
testclarkvalidsa112
	"
    Test demonstrates shows the use of content particles within the element content. 
	 See XML Spec. 1.0 section: 3.2.1 [48][49]"
	|  correctAnswer  result |

	(self class shouldSkipTests and: [testsToSkip includes: 'valid-sa-112'])
		ifTrue:[^nil].
	correctAnswer := (self class  sourcexmltestvalidsaout112xml)  .

	[result := self runTest:self   class sourcexmltestvalidsa112xml ]
		on: self warningSignal
		do: [:warn | warn resume].

	self assert: correctAnswer = result.