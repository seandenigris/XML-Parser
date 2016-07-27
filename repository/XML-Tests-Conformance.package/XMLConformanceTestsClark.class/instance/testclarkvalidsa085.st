tests
testclarkvalidsa085
	"
    Parameter and General entities use different namespaces,
    so there can be an entity of each type with a given name.
	 See XML Spec. 1.0 section: 4"
	|  correctAnswer  result |

	(self class shouldSkipTests and: [testsToSkip includes: 'valid-sa-085'])
		ifTrue:[^nil].
	correctAnswer := (self class  sourcexmltestvalidsaout085xml)  .

	[result := self runTest:self  class  sourcexmltestvalidsa085xml ]
		on: self warningSignal
		do: [:warn | warn resume].

	self assert: correctAnswer = result.