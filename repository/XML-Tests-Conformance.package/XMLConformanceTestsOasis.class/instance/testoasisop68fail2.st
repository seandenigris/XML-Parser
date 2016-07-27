tests
testoasisop68fail2
	"
     no S after '&'
    
	 See XML Spec. 1.0 section: 4.1 [68]"

	(self class shouldSkipTests and: [testsToSkip includes: 'o-p68fail2'])
		ifTrue:[^nil].

	self should: [self runTest:self class sourceoasisp68fail2xml ]
		raise: self exceptionSet2