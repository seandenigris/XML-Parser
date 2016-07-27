tests
testoasisop42fail3
	"
     no NET (contrast with SGML)
    
	 See XML Spec. 1.0 section: 3.1 [42]"

	(self class shouldSkipTests and: [testsToSkip includes: 'o-p42fail3'])
		ifTrue:[^nil].

	self should: [self runTest:self class sourceoasisp42fail3xml ]
		raise: self exceptionSet2