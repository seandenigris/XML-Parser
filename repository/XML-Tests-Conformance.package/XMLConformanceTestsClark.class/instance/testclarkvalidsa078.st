tests
testclarkvalidsa078
	"
    Test demonstrates that an AttlistDecl can use an StringType of CDATA within the Attribute type.  The test also shows that REQUIRED is a valid DefaultDecl. 
	 See XML Spec. 1.0 section: 3.3 3.3.1 [52] [54]"
	|  correctAnswer  result |

	(self class shouldSkipTests and: [testsToSkip includes: 'valid-sa-078'])
		ifTrue:[^nil].
	correctAnswer := (self  class sourcexmltestvalidsaout078xml)  .

	[result := self runTest:self  class  sourcexmltestvalidsa078xml ]
		on: self warningSignal
		do: [:warn | warn resume].
	self assert: correctAnswer = result.