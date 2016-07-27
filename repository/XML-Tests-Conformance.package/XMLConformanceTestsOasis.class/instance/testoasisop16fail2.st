tests
testoasisop16fail2
	"
     a PITarget must be present
    
	 See XML Spec. 1.0 section: 2.6 [16]"

	(self class shouldSkipTests and: [testsToSkip includes: 'o-p16fail2'])
		ifTrue:[^nil].

	self should: [self runTest:self class sourceoasisp16fail2xml ]
		raise: self exceptionSet2