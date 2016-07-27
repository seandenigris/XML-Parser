tests
testoasisop49fail1
	"
    connectors must match     
	 See XML Spec. 1.0 section: 3.2.1 [49]"

	(self class shouldSkipTests and: [testsToSkip includes: 'o-p49fail1'])
		ifTrue:[^nil].

	self should: [self runTest:self class sourceoasisp49fail1xml ]
		raise: self exceptionSet2