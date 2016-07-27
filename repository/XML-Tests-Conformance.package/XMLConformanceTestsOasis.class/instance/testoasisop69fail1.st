tests
testoasisop69fail1
	"
     terminating ';' is required
    
	 See XML Spec. 1.0 section: 4.1 [69]"

	(self class shouldSkipTests and: [testsToSkip includes: 'o-p69fail1'])
		ifTrue:[^nil].

	self should: [self runTest:self class sourceoasisp69fail1xml ]
		raise: self exceptionSet2