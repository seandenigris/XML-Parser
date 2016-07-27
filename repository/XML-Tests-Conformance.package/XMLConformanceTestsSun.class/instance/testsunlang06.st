as yet unclassified
testsunlang06
	"
    Illegal language identification
	 See XML Spec. 1.0 section: 2.11 [33]"

	(self class shouldSkipTests and: [testsToSkip includes: 'lang06'])
		ifTrue:[^nil].

	self should: [self runTest:self class sourcesunnotwflang06xml]
		raise: self exceptionSet