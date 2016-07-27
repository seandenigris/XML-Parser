tests
testoasisop09fail3
	"
     incomplete character reference
    
	 See XML Spec. 1.0 section: 2.3 [9]"

	(self class shouldSkipTests and: [testsToSkip includes: 'o-p09fail3'])
		ifTrue:[^nil].

	self should: [self runTest:self class sourceoasisp09fail3xml ]
		raise: self exceptionSet2