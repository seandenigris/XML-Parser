tests
testoasisop40fail3
	"
     tags start with names, not nmtokens
    
	 See XML Spec. 1.0 section: 3.1 [40]"

	(self class shouldSkipTests and: [testsToSkip includes: 'o-p40fail3'])
		ifTrue:[^nil].

	self should: [self runTest:self class sourceoasisp40fail3xml ]
		raise: self exceptionSet2