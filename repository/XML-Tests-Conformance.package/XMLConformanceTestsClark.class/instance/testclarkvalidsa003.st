tests
testclarkvalidsa003
	"
    Test demonstrates that whitespace is permitted after the tag name in an End-tag.
	 See XML Spec. 1.0 section: 3.1 [42]"
	|  correctAnswer  result |

	(self class shouldSkipTests and: [testsToSkip includes: 'valid-sa-003'])
		ifTrue:[^nil].
	correctAnswer := (self class sourcexmltestvalidsaout003xml)  .

	[result := self runTest:self   class    sourcexmltestvalidsa003xml] 
		on: self warningSignal
		do: [:warn | warn resume].

	self assert: correctAnswer = result.