tests
testoasisop41fail2
	"
     attribute name is required (contrast with SGML)
    
	 See XML Spec. 1.0 section: 3.1 [41]"

	(self class shouldSkipTests and: [testsToSkip includes: 'o-p41fail2'])
		ifTrue:[^nil].

	self should: [self runTest:self class sourceoasisp41fail2xml ]
		raise: self exceptionSet2