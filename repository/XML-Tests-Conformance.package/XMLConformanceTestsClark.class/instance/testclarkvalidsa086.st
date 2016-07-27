tests
testclarkvalidsa086
	"
    Tests whether entities may be declared more than once,
    with the first declaration being the binding one. 
	 See XML Spec. 1.0 section: 4.2"
	|  correctAnswer  result |

	(self class shouldSkipTests and: [testsToSkip includes: 'valid-sa-086'])
		ifTrue:[^nil].
	correctAnswer := (self  class sourcexmltestvalidsaout086xml)  .

	[result := self runTest:self  class  sourcexmltestvalidsa086xml ]
		on: self warningSignal
		do: [:warn | warn resume].

	self assert: correctAnswer = result.