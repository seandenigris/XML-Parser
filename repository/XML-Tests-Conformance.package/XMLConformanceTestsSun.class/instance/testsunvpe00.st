as yet unclassified
testsunvpe00
	"
    Tests construction of internal entity replacement text, using
    an example in the XML specification.  
	 See XML Spec. 1.0 section: 4.5"
	|  correctAnswer  result |

	(self class shouldSkipTests and: [testsToSkip includes: 'v-pe00'])
		ifTrue:[^nil].
	correctAnswer := (self class sourcesunvalidoutpe00xml).

	[result := self runTest:self class sourcesunvalidpe00xml ]
		on: self warningSignal
		do: [:warn | warn resume].
	self assert: correctAnswer = result.