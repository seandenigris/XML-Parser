tests
testclarkvalidsa088
	"
    Tests whether entity references in internal entities are
    expanded late enough, by relying on correct handling to
    make the expanded text be valid.  (If it's expanded too
    early, the entity will parse as an element that's not
    valid in that context.)
	 See XML Spec. 1.0 section: 4.5"
	|  correctAnswer  result |

	(self class shouldSkipTests and: [testsToSkip includes: 'valid-sa-088'])
		ifTrue:[^nil].
	correctAnswer := (self  class sourcexmltestvalidsaout088xml)  .

	[result := self runTest: (self class sourcexmltestvalidsa088xml )]
		on: self warningSignal
		do: [:warn | warn resume].

	self assert: correctAnswer = result.