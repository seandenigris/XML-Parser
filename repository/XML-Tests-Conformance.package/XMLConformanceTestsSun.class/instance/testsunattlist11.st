as yet unclassified
testsunattlist11
	"
    Whitespace required between attributes
	 See XML Spec. 1.0 section: 3.1 [44]"

	(self class shouldSkipTests and: [testsToSkip includes: 'attlist11'])
		ifTrue:[^nil].

	self should: [self runTest:self class sourcesunnotwfattlist11xml ]
		raise: self exceptionSet2