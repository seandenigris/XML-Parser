tests
testclarkvalidsa013
	"
    Test demonstrates that the Attribute in a Start-tag can consist of numerals along with special characters. 
	 See XML Spec. 1.0 section: 2.3 3.1 [13] [40]"
	|  correctAnswer  result |

	(self class shouldSkipTests and: [testsToSkip includes: 'valid-sa-013'])
		ifTrue:[^nil].
	correctAnswer := (self class  sourcexmltestvalidsaout013xml)  .

	[result := self runTest:self   class sourcexmltestvalidsa013xml ]
		on: self warningSignal
		do: [:warn | warn resume].

	self assert: correctAnswer = result.