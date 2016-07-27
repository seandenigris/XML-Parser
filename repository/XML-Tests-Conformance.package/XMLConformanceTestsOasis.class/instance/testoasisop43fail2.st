tests
testoasisop43fail2
	"
     no conditional sections
    
	 See XML Spec. 1.0 section: 3.1 [43]"

	(self class shouldSkipTests and: [testsToSkip includes: 'o-p43fail2'])
		ifTrue:[^nil].

	self should: [self runTest:self class sourceoasisp43fail2xml ]
		raise: self exceptionSet2