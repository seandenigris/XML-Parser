tests
testclarkvalidsa087
	"
    Tests whether character references in internal entities are
    expanded early enough, by relying on correct handling to
    make the entity be well formed.
	 See XML Spec. 1.0 section: 4.5"
	|  correctAnswer  result |

	(self class shouldSkipTests and: [testsToSkip includes: 'valid-sa-087'])
		ifTrue:[^nil].
	correctAnswer := (self  class sourcexmltestvalidsaout087xml)  .

	[result := self runTest:self  class  sourcexmltestvalidsa087xml ]
		on: self warningSignal
		do: [:warn | warn resume].

	self assert: correctAnswer = result.