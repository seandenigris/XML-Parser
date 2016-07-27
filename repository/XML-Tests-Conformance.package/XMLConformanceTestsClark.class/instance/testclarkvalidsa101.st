tests
testclarkvalidsa101
	"
    This tests whether entity expansion is (incorrectly) done
    while processing entity declarations; if it is, the entity
    value literal will terminate prematurely.
	 See XML Spec. 1.0 section: 4.5"
	|  correctAnswer  result |

	(self class shouldSkipTests and: [testsToSkip includes: 'valid-sa-101'])
		ifTrue:[^nil].
	correctAnswer := (self class  sourcexmltestvalidsaout101xml)  .

	[result := self runTest:self   class sourcexmltestvalidsa101xml ]
		on: self warningSignal
		do: [:warn | warn resume].

	self assert: correctAnswer = result.