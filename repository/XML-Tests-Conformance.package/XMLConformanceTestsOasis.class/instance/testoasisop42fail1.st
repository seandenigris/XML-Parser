tests
testoasisop42fail1
	"
     no space before name
    
	 See XML Spec. 1.0 section: 3.1 [42]"

	(self class shouldSkipTests and: [testsToSkip includes: 'o-p42fail1'])
		ifTrue:[^nil].

	self should: [self runTest:self class sourceoasisp42fail1xml ]
		raise: self exceptionSet2