tests
testoasisop32fail2
	"
     quote types must match
    
	 See XML Spec. 1.0 section: 2.9 [32]"

	(self class shouldSkipTests and: [testsToSkip includes: 'o-p32fail2'])
		ifTrue:[^nil].

	self should: [self runTest:self class sourceoasisp32fail2xml ]
		raise: self exceptionSet2