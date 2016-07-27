tests
testoasisop12fail4
	"
     '>' excluded
    
	 See XML Spec. 1.0 section: 2.3 [12]"

	(self class shouldSkipTests and: [testsToSkip includes: 'o-p12fail4'])
		ifTrue:[^nil].

	self should: [self runTest: self class sourceoasisp12fail4xml ]
		raise: self exceptionSet2