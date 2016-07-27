tests
testclarkvalidsa041
	"
    Test demonstrates an Attribute List declaration that uses a StringType as the AttType and also expands the CDATA attribute with a character reference. 
	 See XML Spec. 1.0 section: 3.3.1 4.1 [54] [66]"
	|  correctAnswer  result |

	(self class shouldSkipTests and: [testsToSkip includes: 'valid-sa-041'])
		ifTrue:[^nil].
	correctAnswer := (self class  sourcexmltestvalidsaout041xml)  .

	[result := self runTest:self   class sourcexmltestvalidsa041xml ]
		on: self warningSignal
		do: [:warn | warn resume].

	self assert: correctAnswer = result.