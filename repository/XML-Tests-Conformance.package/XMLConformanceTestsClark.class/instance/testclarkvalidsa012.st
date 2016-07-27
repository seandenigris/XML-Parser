tests
testclarkvalidsa012
	"
    Uses a legal XML 1.0 name consisting of a single colon
    character (disallowed by the latest XML Namespaces draft).
	 See XML Spec. 1.0 section: 2.3 [4]"
	|  correctAnswer  result |

	(self class shouldSkipTests and: [testsToSkip includes: 'valid-sa-012'])
		ifTrue:[^nil].
	correctAnswer := (self sourcexmltestvalidsaout012xml).

	[result := self runTest:self sourcexmltestvalidsa012xml ]
		on: self warningSignal
		do: [:warn | warn resume].

	self assert: correctAnswer = result.