tests
testoasisop74fail2
	"
     value is required
    
	 See XML Spec. 1.0 section: 4.2 [74]"

	(self class shouldSkipTests and: [testsToSkip includes: 'o-p74fail2'])
		ifTrue:[^nil].

	self should: [self runTest:self class sourceoasisp74fail2xml ]
		raise: self exceptionSet2