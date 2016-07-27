tests
testoasisop43fail3
	"
     no conditional sections
    
	 See XML Spec. 1.0 section: 3.1 [43]"

	(self class shouldSkipTests and: [testsToSkip includes: 'o-p43fail3'])
		ifTrue:[^nil].

	self should: [self runTest:self class sourceoasisp43fail3xml]
		raise: self exceptionSet2