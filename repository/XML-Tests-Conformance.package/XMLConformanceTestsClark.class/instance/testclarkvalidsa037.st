tests
testclarkvalidsa037
	"
    Test demonstrates a valid comment and that it may appear anywhere in the document including at the end. 
	 See XML Spec. 1.0 section: 2.6 [15]"
	|  correctAnswer  result |

	(self class shouldSkipTests and: [testsToSkip includes: 'valid-sa-037'])
		ifTrue:[^nil].
	correctAnswer := (self  class sourcexmltestvalidsaout037xml)  .

	[result := self runTest:self   class sourcexmltestvalidsa037xml ]
		on: self warningSignal
		do: [:warn | warn resume].

	self assert: correctAnswer = result.