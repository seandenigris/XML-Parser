tests
testclarkvalidsa020
	"
   Test demonstractes that CDATA sections are valid element content and that
everyting between the CDStart and CDEnd is recognized as character data not markup.  
	 See XML Spec. 1.0 section: 2.7 3.1 [18] [43]"
	|  correctAnswer  result |

	(self class shouldSkipTests and: [testsToSkip includes: 'valid-sa-020'])
		ifTrue:[^nil].
	correctAnswer := (self  class  sourcexmltestvalidsaout020xml)  .

	[result := self runTest:self  class  sourcexmltestvalidsa020xml ]
		on: self warningSignal
		do: [:warn | warn resume].

	self assert: correctAnswer = result.