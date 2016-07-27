tests
testclarkvalidextsa003
	"
    Test demonstrates that the content of an element can be empty. In this case the external entity is an empty file. 
	 See XML Spec. 1.0 section: 3.1 4.1 [43] [68]"
	|  correctAnswer  result |

	(self class shouldSkipTests and: [testsToSkip includes: 'valid-ext-sa-003'])
		ifTrue:[^nil].
	correctAnswer := self  class sourcexmltestvalidextsaout003xml.

	[result := self runTest:self class sourcexmltestvalidextsa003xml ]
		on: self warningSignal
		do: [:warn | warn resume].

	self assert: correctAnswer = result.