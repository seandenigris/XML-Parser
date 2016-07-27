as yet unclassified
testsunlang01
	"
    Illegal language identification
	 See XML Spec. 1.0 section: 2.11 [33]"

	(self class shouldSkipTests and: [testsToSkip includes: 'lang01'])
		ifTrue:[^nil].

	self should: [self runTest:self class sourcesunnotwflang01xml]
		raise: self exceptionSet