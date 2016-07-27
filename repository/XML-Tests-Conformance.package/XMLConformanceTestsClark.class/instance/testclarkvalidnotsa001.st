tests
testclarkvalidnotsa001
	"
    Test demonstrates the use of an ExternalID within a document type definition. 
	 See XML Spec. 1.0 section: 4.2.2 [75]"
	|  correctAnswer  result |

	(self class shouldSkipTests and: [testsToSkip includes: 'valid-not-sa-001'])
		ifTrue:[^nil].
	correctAnswer := self class  sourcexmltestvalidnotsaout001xml.

	[result := self runTest: self class sourcexmltestvalidnotsa001xml ]
		on: self warningSignal
		do: [:warn | warn resume].

	self assert: correctAnswer = result.