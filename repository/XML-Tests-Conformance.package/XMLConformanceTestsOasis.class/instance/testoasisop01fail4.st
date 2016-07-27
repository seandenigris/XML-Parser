tests
testoasisop01fail4
	"
     document element must be complete.
    
	 See XML Spec. 1.0 section: 2.1 [1]"

	(self class shouldSkipTests and: [testsToSkip includes: 'o-p01fail4'])
		ifTrue:[^nil].

	self should: [self runTest: self class sourceoasisp01fail4xml ]
		raise: self exceptionSet2