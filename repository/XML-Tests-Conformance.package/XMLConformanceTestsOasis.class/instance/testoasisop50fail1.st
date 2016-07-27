tests
testoasisop50fail1
	"
    connectors must match     
	 See XML Spec. 1.0 section: 3.2.1 [50]"

	(self class shouldSkipTests and: [testsToSkip includes: 'o-p50fail1'])
		ifTrue:[^nil].

	self should: [self runTest:self class sourceoasisp50fail1xml ]
		raise: self exceptionSet2