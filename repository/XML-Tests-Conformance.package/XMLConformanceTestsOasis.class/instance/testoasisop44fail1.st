tests
testoasisop44fail1
	"
    Illegal space before Empty element tag.    
	 See XML Spec. 1.0 section: 3.1 [44]"

	(self class shouldSkipTests and: [testsToSkip includes: 'o-p44fail1'])
		ifTrue:[^nil].

	self should: [self runTest:self class sourceoasisp44fail1xml ]
		raise: self exceptionSet2