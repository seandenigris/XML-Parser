tests
testclarkvalidsa027
	"
    Test demonstrates an Element Type Declaration and that ANY is a valid contenspec. 
	 See XML Spec. 1.0 section: 3.2 [46]"
	|  correctAnswer  result |

	(self class shouldSkipTests and: [testsToSkip includes: 'valid-sa-027'])
		ifTrue:[^nil].
	correctAnswer := (self class  sourcexmltestvalidsaout027xml)  .

	[result := self runTest:self   class sourcexmltestvalidsa027xml ]
		on: self warningSignal
		do: [:warn | warn resume].

	self assert: correctAnswer = result.