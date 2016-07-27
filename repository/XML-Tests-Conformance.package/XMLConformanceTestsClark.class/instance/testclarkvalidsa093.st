tests
testclarkvalidsa093
	"
    Test demonstrates that extra whitespace is not intended for inclusion in the delivered version of the document. 
	 See XML Spec. 1.0 section: 2.10"
	|  correctAnswer  result |

	(self class shouldSkipTests and: [testsToSkip includes: 'valid-sa-093'])
		ifTrue:[^nil].
	correctAnswer := (self sourcexmltestvalidsaout093xml) .

	[result := self runTest:self  class  sourcexmltestvalidsa093xml ]
		on: self warningSignal
		do: [:warn | warn resume].

	self assert: correctAnswer = result.