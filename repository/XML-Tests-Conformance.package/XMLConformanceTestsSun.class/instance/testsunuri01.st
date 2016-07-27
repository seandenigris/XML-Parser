as yet unclassified
testsunuri01
	"
    SYSTEM ids may not have URI fragments
	 See XML Spec. 1.0 section: 4.2.2 [75]"

	(self class shouldSkipTests and: [testsToSkip includes: 'uri01'])
		ifTrue:[^nil].

	self should: [self runTest:self class sourcesunnotwfuri01xml]
		raise: self exceptionSet