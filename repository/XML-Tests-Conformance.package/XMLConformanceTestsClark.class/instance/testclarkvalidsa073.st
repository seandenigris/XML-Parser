tests
testclarkvalidsa073
	"
    Test demonstrates that an AttlistDecl can use IDREFS as the TokenizedType within the Attribute type.  The test also shows that IMPLIED is a valid DefaultDecl. 
	 See XML Spec. 1.0 section: 3.3 3.3.1 [52] [56]"
	|  correctAnswer  result |

	(self class shouldSkipTests and: [testsToSkip includes: 'valid-sa-073'])
		ifTrue:[^nil].
	correctAnswer := (self class  sourcexmltestvalidsaout073xml)  .

	[result := self runTest:self  class  sourcexmltestvalidsa073xml ]
		on: self warningSignal
		do: [:warn | warn resume].

	self assert: correctAnswer = result.