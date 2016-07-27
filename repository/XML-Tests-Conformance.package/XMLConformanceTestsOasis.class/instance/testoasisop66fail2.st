tests
testoasisop66fail2
	"
     no S after '&#'
    
	 See XML Spec. 1.0 section: 4.1 [66]"

	(self class shouldSkipTests and: [testsToSkip includes: 'o-p66fail2'])
		ifTrue:[^nil].

	self should: [self runTest:self class sourceoasisp66fail2xml ]
		raise: self exceptionSet2