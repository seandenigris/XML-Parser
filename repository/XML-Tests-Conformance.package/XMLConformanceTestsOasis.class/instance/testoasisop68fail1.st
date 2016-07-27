tests
testoasisop68fail1
	"
     terminating ';' is required
    
	 See XML Spec. 1.0 section: 4.1 [68]"

	(self class shouldSkipTests and: [testsToSkip includes: 'o-p68fail1'])
		ifTrue:[^nil].

	self should: [self runTest:self class sourceoasisp68fail1xml ]
		raise: self exceptionSet2