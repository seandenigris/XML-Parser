tests
testoasisop39fail5
	"
         
	 See XML Spec. 1.0 section: 3 [39]"

	(self class shouldSkipTests and: [testsToSkip includes: 'o-p39fail5'])
		ifTrue:[^nil].

	self should: [self runTest:self class sourceoasisp39fail5xml ]
		raise: self exceptionSet2