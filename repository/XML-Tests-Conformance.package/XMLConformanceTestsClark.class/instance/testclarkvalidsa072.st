tests
testclarkvalidsa072
	"
    Test demonstrates that an AttlistDecl can use IDREF as the TokenizedType within the Attribute type.  The test also shows that IMPLIED is a valid DefaultDecl. 
	 See XML Spec. 1.0 section: 3.3 3.3.1 [52] [56]"
	|  correctAnswer  result |

	(self class shouldSkipTests and: [testsToSkip includes: 'valid-sa-072'])
		ifTrue:[^nil].
	correctAnswer := (self  class sourcexmltestvalidsaout072xml)  .

	[result := self runTest:self  class  sourcexmltestvalidsa072xml ]
		on: self warningSignal
		do: [:warn | warn resume].

	self assert: correctAnswer = result.