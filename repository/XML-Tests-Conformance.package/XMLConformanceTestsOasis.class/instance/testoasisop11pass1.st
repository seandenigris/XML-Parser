tests
testoasisop11pass1
	"
     system literals may not contain
    URI fragments
    
	 See XML Spec. 1.0 section: 2.3, 4.2.2 [11]"

	(self class shouldSkipTests and: [testsToSkip includes: 'o-p11pass1'])
		ifTrue:[^nil].

	self should: [self runTest:self class sourceoasisp11pass1xml]
		raise: self exceptionSet