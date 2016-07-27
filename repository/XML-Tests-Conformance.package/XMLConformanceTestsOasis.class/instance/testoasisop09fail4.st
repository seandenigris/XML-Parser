tests
testoasisop09fail4
	"
     quote types must match
    
	 See XML Spec. 1.0 section: 2.3 [9]"

	(self class shouldSkipTests and: [testsToSkip includes: 'o-p09fail4'])
		ifTrue:[^nil].

	self should: [self runTest:self class sourceoasisp09fail4xml ]
		raise: self exceptionSet2