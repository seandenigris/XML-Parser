as yet unclassified
testsunlang03
	"
    Illegal language identification
	 See XML Spec. 1.0 section: 2.11 [33]"

	(self class shouldSkipTests and: [testsToSkip includes: 'lang03'])
		ifTrue:[^nil].

	self should: [self runTest:self class sourcesunnotwflang03xml]
		raise: self exceptionSet