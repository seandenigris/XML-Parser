tests
testoasisop27fail1
	"
     References aren't allowed in Misc,
    even if they would resolve to valid Misc.
    
	 See XML Spec. 1.0 section: 2.8 [27]"

	(self class shouldSkipTests and: [testsToSkip includes: 'o-p27fail1'])
		ifTrue:[^nil].

	self should: [self runTest: self class sourceoasisp27fail1xml ]
		raise: self exceptionSet2