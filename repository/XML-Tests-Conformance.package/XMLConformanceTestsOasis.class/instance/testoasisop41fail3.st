tests
testoasisop41fail3
	"
     Eq required
    
	 See XML Spec. 1.0 section: 3.1 [41]"

	(self class shouldSkipTests and: [testsToSkip includes: 'o-p41fail3'])
		ifTrue:[^nil].

	self should: [self runTest:self class sourceoasisp41fail3xml ]
		raise: self exceptionSet2