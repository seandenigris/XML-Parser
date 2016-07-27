tests
testclarkvalidsa077
	"
    Test demonstrates that an AttlistDecl can use an EnumeratedType within the Attribute type.  The test also shows that IMPLIED is a valid DefaultDecl. 
	 See XML Spec. 1.0 section: 3.3 3.3.1 [52] [54]"
	|  correctAnswer  result |

	(self class shouldSkipTests and: [testsToSkip includes: 'valid-sa-077'])
		ifTrue:[^nil].
	correctAnswer := (self  class sourcexmltestvalidsaout077xml)  .

	[result := self runTest:self  class  sourcexmltestvalidsa077xml ]
		on: self warningSignal
		do: [:warn | warn resume].

	self assert: correctAnswer = result.