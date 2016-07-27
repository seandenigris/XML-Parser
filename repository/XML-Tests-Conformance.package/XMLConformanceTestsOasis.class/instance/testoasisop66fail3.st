tests
testoasisop66fail3
	"
     no hex digits in numeric reference
    
	 See XML Spec. 1.0 section: 4.1 [66]"

	(self class shouldSkipTests and: [testsToSkip includes: 'o-p66fail3'])
		ifTrue:[^nil].

	self should: [self runTest:self class sourceoasisp66fail3xml ]
		raise: self exceptionSet2