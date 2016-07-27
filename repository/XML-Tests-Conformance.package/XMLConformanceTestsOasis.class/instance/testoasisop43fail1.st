tests
testoasisop43fail1
	"
     no non-comment declarations
    
	 See XML Spec. 1.0 section: 3.1 [43]"

	(self class shouldSkipTests and: [testsToSkip includes: 'o-p43fail1'])
		ifTrue:[^nil].

	self should: [self runTest:self class sourceoasisp43fail1xml ]
		raise: self exceptionSet2