tests
testclarkvalidsa119
	"
    Comments may contain any legal XML characters;
    only the string  --  is disallowed.
	 See XML Spec. 1.0 section: 2.5"
	|  correctAnswer  result |

	(self class shouldSkipTests and: [testsToSkip includes: 'valid-sa-119'])
		ifTrue:[^nil].
	correctAnswer := (self class  sourcexmltestvalidsaout119xml)  .

	[result := self runTest:self   class sourcexmltestvalidsa119xml ]
		on: self warningSignal
		do: [:warn | warn resume].

	self assert: correctAnswer = result.