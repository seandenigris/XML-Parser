tests
testoasisop66fail1
	"
     terminating ';' is required
    
	 See XML Spec. 1.0 section: 4.1 [66]"

	(self class shouldSkipTests and: [testsToSkip includes: 'o-p66fail1'])
		ifTrue:[^nil].

	self should: [self runTest:self class sourceoasisp66fail1xml ]
		raise: self exceptionSet2