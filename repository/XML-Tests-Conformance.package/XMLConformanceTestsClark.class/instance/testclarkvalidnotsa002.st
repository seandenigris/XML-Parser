tests
testclarkvalidnotsa002
	"
    Test demonstrates the use of an ExternalID within a document type definition. 
	 See XML Spec. 1.0 section: 4.2.2 [75]"
	|  correctAnswer  result |

	(self class shouldSkipTests and: [testsToSkip includes: 'valid-not-sa-002'])
		ifTrue:[^nil].
	correctAnswer := (self  class  sourcexmltestvalidnotsaout002xml).

	[result := self runTest: self   class   sourcexmltestvalidnotsa002xml ]
		on: self warningSignal
		do: [:warn | warn resume].

	self assert: correctAnswer = result.