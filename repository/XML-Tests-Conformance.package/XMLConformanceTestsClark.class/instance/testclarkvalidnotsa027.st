tests
testclarkvalidnotsa027
	"
    Test demonstrates a parameter entity reference whose value is NULL. 
	 See XML Spec. 1.0 section: 4.1 [69]"
	|  correctAnswer  result |

	(self class shouldSkipTests and: [testsToSkip includes: 'valid-not-sa-027'])
		ifTrue:[^nil].
	correctAnswer := (self class sourcexmltestvalidnotsaout027xml) .

	[result := self runTest: (self  class  sourcexmltestvalidnotsa027xml) ]
		on: self warningSignal
		do: [:warn | warn resume].

	self assert: correctAnswer = result.