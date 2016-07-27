tests
testoasisop10fail3
	"
     quote types must match
    
	 See XML Spec. 1.0 section: 2.3 [10]"

	(self class shouldSkipTests and: [testsToSkip includes: 'o-p10fail3'])
		ifTrue:[^nil].

	self should: [self runTest:self class sourceoasisp10fail3xml ]
		raise: self exceptionSet2