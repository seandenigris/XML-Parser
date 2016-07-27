as yet unclassified
testsunlang02
	"
    Illegal language identification
	 See XML Spec. 1.0 section: 2.11 [33]"

	(self class shouldSkipTests and: [testsToSkip includes: 'lang02'])
		ifTrue:[^nil].

	self should: [self runTest:self class sourcesunnotwflang02xml]
		raise: self exceptionSet