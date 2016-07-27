tests
testoasisop39fail1
	"
     start-tag requires end-tag
    
	 See XML Spec. 1.0 section: 3 [39]"

	(self class shouldSkipTests and: [testsToSkip includes: 'o-p39fail1'])
		ifTrue:[^nil].

	self should: [self runTest:self class sourceoasisp39fail1xml ]
		raise: self exceptionSet2