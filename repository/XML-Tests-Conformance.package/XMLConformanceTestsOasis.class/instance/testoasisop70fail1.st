tests
testoasisop70fail1
	"
     This is neither
    
	 See XML Spec. 1.0 section: 4.2 [70]"

	(self class shouldSkipTests and: [testsToSkip includes: 'o-p70fail1'])
		ifTrue:[^nil].

	self should: [self runTest:self class sourceoasisp70fail1xml ]
		raise: self exceptionSet2