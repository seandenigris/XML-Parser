tests
testclarkvalidsa042
	"
    Test demonstrates an Attribute List declaration that uses a StringType as the AttType and also expands the CDATA attribute with a character reference.  The test also shows that the leading zeros in the character reference are ignored. 
	 See XML Spec. 1.0 section: 3.3.1 4.1 [54] [66]"
	|  correctAnswer  result |

	(self class shouldSkipTests and: [testsToSkip includes: 'valid-sa-042'])
		ifTrue:[^nil].
	correctAnswer := (self class  sourcexmltestvalidsaout042xml)  .

	[result := self runTest:self  class  sourcexmltestvalidsa042xml ]
		on: self warningSignal
		do: [:warn | warn resume].
	self assert: correctAnswer = result.