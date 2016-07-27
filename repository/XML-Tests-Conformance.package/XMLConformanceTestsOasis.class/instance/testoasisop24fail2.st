tests
testoasisop24fail2
	"
     quote types must match
    
	 See XML Spec. 1.0 section: 2.8 [24]"

	(self class shouldSkipTests and: [testsToSkip includes: 'o-p24fail2'])
		ifTrue:[^nil].

	self should: [self runTest:self class sourceoasisp24fail2xml ]
		raise: self exceptionSet2