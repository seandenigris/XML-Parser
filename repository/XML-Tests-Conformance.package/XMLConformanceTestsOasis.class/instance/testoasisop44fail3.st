tests
testoasisop44fail3
	"
    Illegal comment in Empty element tag.    
	 See XML Spec. 1.0 section: 3.1 [44]"

	(self class shouldSkipTests and: [testsToSkip includes: 'o-p44fail3'])
		ifTrue:[^nil].

	self should: [self runTest:self class sourceoasisp44fail3xml ]
		raise: self exceptionSet2