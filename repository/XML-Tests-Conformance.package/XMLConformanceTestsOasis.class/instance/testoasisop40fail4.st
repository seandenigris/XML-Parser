tests
testoasisop40fail4
	"
     no space before name
    
	 See XML Spec. 1.0 section: 3.1 [40]"

	(self class shouldSkipTests and: [testsToSkip includes: 'o-p40fail4'])
		ifTrue:[^nil].

	self should: [self runTest:self class sourceoasisp40fail4xml ]
		raise: self exceptionSet2