tests
testoasisop68fail3
	"
     no S before ';'
    
	 See XML Spec. 1.0 section: 4.1 [68]"

	(self class shouldSkipTests and: [testsToSkip includes: 'o-p68fail3'])
		ifTrue:[^nil].

	self should: [self runTest:self class sourceoasisp68fail3xml ]
		raise: self exceptionSet2