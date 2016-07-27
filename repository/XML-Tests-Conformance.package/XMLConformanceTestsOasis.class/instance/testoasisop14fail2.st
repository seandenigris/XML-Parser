tests
testoasisop14fail2
	"
     '&' excluded
    
	 See XML Spec. 1.0 section: 2.4 [14]"

	(self class shouldSkipTests and: [testsToSkip includes: 'o-p14fail2'])
		ifTrue:[^nil].

	self should: [self runTest:self class sourceoasisp14fail2xml ]
		raise: self exceptionSet2