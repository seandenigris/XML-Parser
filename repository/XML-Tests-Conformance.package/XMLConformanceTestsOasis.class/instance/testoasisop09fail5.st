tests
testoasisop09fail5
	"
     quote types must match
    
	 See XML Spec. 1.0 section: 2.3 [9]"

	(self class shouldSkipTests and: [testsToSkip includes: 'o-p09fail5'])
		ifTrue:[^nil].

	self should: [self runTest:self class sourceoasisp09fail5xml ]
		raise: self exceptionSet2