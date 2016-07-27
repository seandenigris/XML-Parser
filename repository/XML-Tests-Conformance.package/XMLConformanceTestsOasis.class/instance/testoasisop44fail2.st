tests
testoasisop44fail2
	"
    Illegal space after Empty element tag.    
	 See XML Spec. 1.0 section: 3.1 [44]"

	(self class shouldSkipTests and: [testsToSkip includes: 'o-p44fail2'])
		ifTrue:[^nil].

	self should: [self runTest:self class sourceoasisp44fail2xml ]
		raise: self exceptionSet2