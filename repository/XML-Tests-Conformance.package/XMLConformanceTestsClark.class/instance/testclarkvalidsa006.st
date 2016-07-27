tests
testclarkvalidsa006
	"
    Test demonstrates that the AttValue within a Start-tag can use a single quote as a delimter. 
	 See XML Spec. 1.0 section: 3.1 [41]"
	|  correctAnswer  result |

	(self class shouldSkipTests and: [testsToSkip includes: 'valid-sa-006'])
		ifTrue:[^nil].
	correctAnswer := (self class sourcexmltestvalidsaout006xml)  .

	[result := self runTest:(self class  sourcexmltestvalidsa006xml) ]
		on: self warningSignal
		do: [:warn | warn resume].

	self assert: correctAnswer = result.