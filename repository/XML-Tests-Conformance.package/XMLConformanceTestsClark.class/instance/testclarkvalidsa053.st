tests
testclarkvalidsa053
	"
    Tests inclusion of a well-formed internal entity, which
    holds an element required by the content model.
	 See XML Spec. 1.0 section: 4.4.2"
	|  correctAnswer  result |

	(self class shouldSkipTests and: [testsToSkip includes: 'valid-sa-053'])
		ifTrue:[^nil].
	correctAnswer := (self class  sourcexmltestvalidsaout053xml)  .

	[result := self runTest:self  class  sourcexmltestvalidsa053xml ]
		on: self warningSignal
		do: [:warn | warn resume].

	self assert: correctAnswer = result.