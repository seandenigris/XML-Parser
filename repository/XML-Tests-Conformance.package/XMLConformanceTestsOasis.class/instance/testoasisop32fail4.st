tests
testoasisop32fail4
	"
     quotes are required
    
	 See XML Spec. 1.0 section: 2.9 [32]"

	(self class shouldSkipTests and: [testsToSkip includes: 'o-p32fail4'])
		ifTrue:[^nil].

	self should: [self runTest:self class sourceoasisp32fail4xml ]
		raise: self exceptionSet2