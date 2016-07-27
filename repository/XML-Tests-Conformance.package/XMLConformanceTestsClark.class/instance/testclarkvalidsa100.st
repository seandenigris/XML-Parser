tests
testclarkvalidsa100
	"
    Makes sure that PUBLIC identifiers may have some strange
    characters.  NOTE:  The XML editors have said that the XML
    specification errata will specify that parameter entity expansion
    does not occur in PUBLIC identifiers, so that the '%' character
    will not flag a malformed parameter entity reference.
	 See XML Spec. 1.0 section: 2.3 [12]"
	|  correctAnswer  result |

	(self class shouldSkipTests and: [testsToSkip includes: 'valid-sa-100'])
		ifTrue:[^nil].
	correctAnswer := (self class  sourcexmltestvalidsaout100xml)  .

	[result := self runTest:self  class  sourcexmltestvalidsa100xml ]
		on: self warningSignal
		do: [:warn | warn resume].

	self assert: correctAnswer = result.