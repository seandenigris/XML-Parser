tests
testoasisop41fail1
	"
     quotes are required (contrast with SGML)
    
	 See XML Spec. 1.0 section: 3.1 [41]"

	(self class shouldSkipTests and: [testsToSkip includes: 'o-p41fail1'])
		ifTrue:[^nil].

	self should: [self runTest:self class sourceoasisp41fail1xml ]
		raise: self exceptionSet2