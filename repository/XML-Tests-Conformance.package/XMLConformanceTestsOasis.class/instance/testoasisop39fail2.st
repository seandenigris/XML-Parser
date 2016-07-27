tests
testoasisop39fail2
	"
     end-tag requires start-tag
    
	 See XML Spec. 1.0 section: 3 [39]"

	(self class shouldSkipTests and: [testsToSkip includes: 'o-p39fail2'])
		ifTrue:[^nil].

	self should: [self runTest:self class sourceoasisp39fail2xml ]
		raise: self exceptionSet2