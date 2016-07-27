tests
testoasisop18fail2
	"
     no space after  CDATA 
    
	 See XML Spec. 1.0 section: 2.7 [18]"

	(self class shouldSkipTests and: [testsToSkip includes: 'o-p18fail2'])
		ifTrue:[^nil].

	self should: [self runTest:self class sourceoasisp18fail2xml ]
		raise: self exceptionSet2