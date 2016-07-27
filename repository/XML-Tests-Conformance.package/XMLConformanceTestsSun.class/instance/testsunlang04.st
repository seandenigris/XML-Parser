as yet unclassified
testsunlang04
	"
    Illegal language identification
	 See XML Spec. 1.0 section: 2.11 [33]"

	(self class shouldSkipTests and: [testsToSkip includes: 'lang04'])
		ifTrue:[^nil].

	self should: [self runTest:self class sourcesunnotwflang04xml]
		raise: self exceptionSet