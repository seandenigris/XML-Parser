tests
testclarkvalidsa025
	"
    Test demonstrates an Element Type Declaration and that the contentspec can be of mixed content. 
	 See XML Spec. 1.0 section: 3.2 [46]"
	|  correctAnswer  result |

	(self class shouldSkipTests and: [testsToSkip includes: 'valid-sa-025'])
		ifTrue:[^nil].
	correctAnswer := (self class  sourcexmltestvalidsaout025xml)  .

	[result := self runTest:self  class  sourcexmltestvalidsa025xml ]
		on: self warningSignal
		do: [:warn | warn resume].

	self assert: correctAnswer = result.