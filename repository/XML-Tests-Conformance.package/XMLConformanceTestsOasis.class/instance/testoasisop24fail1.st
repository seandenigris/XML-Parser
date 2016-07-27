tests
testoasisop24fail1
	"
     quote types must match
    
	 See XML Spec. 1.0 section: 2.8 [24]"

	(self class shouldSkipTests and: [testsToSkip includes: 'o-p24fail1'])
		ifTrue:[^nil].

	self should: [self runTest:self class sourceoasisp24fail1xml ]
		raise: self exceptionSet2