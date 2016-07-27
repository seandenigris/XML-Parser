tests
testclarkvalidsa026
	"
    Test demonstrates an Element Type Declaration and that EMPTY is a valid contentspec. 
	 See XML Spec. 1.0 section: 3.2 [46]"
	|  correctAnswer  result |

	(self class shouldSkipTests and: [testsToSkip includes: 'valid-sa-026'])
		ifTrue:[^nil].
	correctAnswer := (self class  sourcexmltestvalidsaout026xml)  .

	[result := self runTest:self   class sourcexmltestvalidsa026xml ]
		on: self warningSignal
		do: [:warn | warn resume].

	self assert: correctAnswer = result.