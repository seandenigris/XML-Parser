as yet unclassified
testsunnotation01
	"
    N testsToSkip | testsToSkip |
OTATION declarations don't need SYSTEM IDs; and
    externally declared notations may be used to declare
    unparsed entities in the internal DTD subset.
    The notation must be reported to the application.
    
	 See XML Spec. 1.0 section: 4.7 [82]"
	|  correctAnswer  result |

	(self class shouldSkipTests and: [testsToSkip includes: 'notation01'])
		ifTrue:[^nil].
	correctAnswer := (self class sourcesunvalidoutnotation01xml).

	[result := self runTest: self class sourcesunvalidnotation01xml ]
		on: self warningSignal
		do: [:warn | warn resume].

	self assert: correctAnswer = result.