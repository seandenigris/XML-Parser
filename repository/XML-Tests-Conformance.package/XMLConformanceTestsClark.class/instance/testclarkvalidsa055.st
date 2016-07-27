tests
testclarkvalidsa055
	"
    Test demonstrates that extra whitespace within a processing instruction willnormalized into s single space character. 
	 See XML Spec. 1.0 section: 2.6 2.10 [16]"
	|  correctAnswer  result |

	(self class shouldSkipTests and: [testsToSkip includes: 'valid-sa-055'])
		ifTrue:[^nil].
	correctAnswer := (self  class sourcexmltestvalidsaout055xml)  .

	[result := self runTest:self   class sourcexmltestvalidsa055xml ]
		on: self warningSignal
		do: [:warn | warn resume].

	self assert: correctAnswer = result.