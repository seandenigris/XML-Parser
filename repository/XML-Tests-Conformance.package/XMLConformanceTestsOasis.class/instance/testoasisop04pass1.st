tests
testoasisop04pass1
	"
     names with all valid ASCII characters, and one from each
              other class in NameChar
    
	 See XML Spec. 1.0 section: 2.3 [4]"

	(self class shouldSkipTests and: [testsToSkip includes: 'o-p04pass1'])
		ifTrue:[^nil].

	self should: [self runTest:self class sourceoasisp04pass1xml]
		raise: self exceptionSet