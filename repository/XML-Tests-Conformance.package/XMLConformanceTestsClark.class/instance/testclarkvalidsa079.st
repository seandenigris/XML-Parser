tests
testclarkvalidsa079
	"
    Test demonstrates that an AttlistDecl can use an StringType of CDATA within the Attribute type.  The test also shows that FIXED is a valid DefaultDecl and that a value can be given to the attribute in the Start-tag as well as the AttListDecl. 
	 See XML Spec. 1.0 section: 3.3 3.3.2 [52] [60]"
	|  correctAnswer  result |

	(self class shouldSkipTests and: [testsToSkip includes: 'valid-sa-079'])
		ifTrue:[^nil].
	correctAnswer := (self class  sourcexmltestvalidsaout079xml)  .

	[result := self runTest:self  class  sourcexmltestvalidsa079xml ]
		on: self warningSignal
		do: [:warn | warn resume].
	self assert: correctAnswer = result.