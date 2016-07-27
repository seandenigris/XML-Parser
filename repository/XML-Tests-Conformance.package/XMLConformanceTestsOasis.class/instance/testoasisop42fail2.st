tests
testoasisop42fail2
	"
     cannot end with  /> 
    
	 See XML Spec. 1.0 section: 3.1 [42]"

	(self class shouldSkipTests and: [testsToSkip includes: 'o-p42fail2'])
		ifTrue:[^nil].

	self should: [self runTest:self class sourceoasisp42fail2xml ]
		raise: self exceptionSet2