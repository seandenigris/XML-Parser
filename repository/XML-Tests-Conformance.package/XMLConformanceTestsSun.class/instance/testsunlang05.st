as yet unclassified
testsunlang05
	"
    Illegal language identification
	 See XML Spec. 1.0 section: 2.11 [33]"

	(self class shouldSkipTests and: [testsToSkip includes: 'lang05'])
		ifTrue:[^nil].

	self should: [self runTest:self class sourcesunnotwflang05xml]
		raise: self exceptionSet