tests
testclarkvalidsa081
	"
    Test demonstrates the use of the optional character following a name or list  to govern the number of times an element or content particles in the list occur. 
	 See XML Spec. 1.0 section: 3.2.1 [50]"
	|  correctAnswer  result |

	(self class shouldSkipTests and: [testsToSkip includes: 'valid-sa-081'])
		ifTrue:[^nil].
	correctAnswer := (self  class sourcexmltestvalidsaout081xml)  .

	[result := self runTest:self  class  sourcexmltestvalidsa081xml ]
		on: self warningSignal
		do: [:warn | warn resume].

	self assert: correctAnswer = result.