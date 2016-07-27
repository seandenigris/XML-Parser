tests
testoasisop14fail1
	"
     '<' excluded
    
	 See XML Spec. 1.0 section: 2.4 [14]"

	(self class shouldSkipTests and: [testsToSkip includes: 'o-p14fail1'])
		ifTrue:[^nil].

	self should: [self runTest:self class sourceoasisp14fail1xml ]
		raise: self exceptionSet2