tests
testoasisop71fail2
	"
     Entity name is a Name, not an NMToken
    
	 See XML Spec. 1.0 section: 4.2 [71]"

	(self class shouldSkipTests and: [testsToSkip includes: 'o-p71fail2'])
		ifTrue:[^nil].

	self should: [self runTest:self class sourceoasisp71fail2xml ]
		raise: self exceptionSet2