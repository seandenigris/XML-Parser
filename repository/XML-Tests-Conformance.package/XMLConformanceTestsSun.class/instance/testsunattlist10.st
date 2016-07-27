as yet unclassified
testsunattlist10
	"
    Whitespace required between attributes
	 See XML Spec. 1.0 section: 3.1 [40]"

	(self class shouldSkipTests and: [testsToSkip includes: 'attlist10'])
		ifTrue:[^nil].

	self should: [self runTest:self class sourcesunnotwfattlist10xml ]
		raise: self exceptionSet2