tests
testoasisop71fail3
	"
     no S after  <! 
    
	 See XML Spec. 1.0 section: 4.2 [71]"

	(self class shouldSkipTests and: [testsToSkip includes: 'o-p71fail3'])
		ifTrue:[^nil].

	self should: [self runTest:self class sourceoasisp71fail3xml ]
		raise: self exceptionSet2