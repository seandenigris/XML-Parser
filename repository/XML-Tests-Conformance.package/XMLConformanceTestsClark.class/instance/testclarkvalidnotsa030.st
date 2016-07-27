tests
testclarkvalidnotsa030
	"
    Test demonstrates the use of the conditonal section IGNORE the will ignore its content from being used. 
	 See XML Spec. 1.0 section: 3.4 [62]"
	|  correctAnswer  result |

	(self class shouldSkipTests and: [testsToSkip includes: 'valid-not-sa-030'])
		ifTrue:[^nil].
	correctAnswer := (self  class sourcexmltestvalidnotsaout030xml) .

	[result := self runTest:self   class  sourcexmltestvalidnotsa030xml ]
		on: self warningSignal
		do: [:warn | warn resume].

	self assert: correctAnswer = result.