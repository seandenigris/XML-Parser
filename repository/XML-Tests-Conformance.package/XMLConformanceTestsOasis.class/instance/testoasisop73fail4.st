tests
testoasisop73fail4
	"
     Value is required
    
	 See XML Spec. 1.0 section: 4.2 [73]"

	(self class shouldSkipTests and: [testsToSkip includes: 'o-p73fail4'])
		ifTrue:[^nil].

	self should: [self runTest:self class sourceoasisp73fail4xml ]
		raise: self exceptionSet2