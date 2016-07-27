tests
testclarkvalidsa071
	"
    Test demonstrates that an AttlistDecl can use ID as the TokenizedType within the Attribute type.  The test also shows that IMPLIED is a valid DefaultDecl. 
	 See XML Spec. 1.0 section: 3.3 3.3.1 [52] [56]"
	|  correctAnswer  result |

	(self class shouldSkipTests and: [testsToSkip includes: 'valid-sa-071'])
		ifTrue:[^nil].
	correctAnswer := (self class  sourcexmltestvalidsaout071xml)  .

	[result := self runTest:self  class  sourcexmltestvalidsa071xml ]
		on: self warningSignal
		do: [:warn | warn resume].

	self assert: correctAnswer = result.