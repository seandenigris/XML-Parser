tests
testclarkvalidsa011
	"
    Test demonstrates mutliple Attibutes within the Start-tag. 
	 See XML Spec. 1.0 section: 3.1 [40]"
	|  correctAnswer  result |

	(self class shouldSkipTests and: [testsToSkip includes: 'valid-sa-011'])
		ifTrue:[^nil].
	correctAnswer := (self class  sourcexmltestvalidsaout011xml)  .

	[result := self runTest:self  class  sourcexmltestvalidsa011xml ]
		on: self warningSignal
		do: [:warn | warn resume].

	self assert: correctAnswer = result.