tests
testoasisop75fail5
	"
     only one keyword
    
	 See XML Spec. 1.0 section: 4.2.2 [75]"

	(self class shouldSkipTests and: [testsToSkip includes: 'o-p75fail5'])
		ifTrue:[^nil].

	self should: [self runTest:self class sourceoasisp75fail5xml ]
		raise: self exceptionSet2