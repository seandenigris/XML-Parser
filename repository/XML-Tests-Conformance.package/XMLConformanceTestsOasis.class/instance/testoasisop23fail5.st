tests
testoasisop23fail5
	"
     no SGML-type PIs
    
	 See XML Spec. 1.0 section: 2.8 [23]"

	(self class shouldSkipTests and: [testsToSkip includes: 'o-p23fail5'])
		ifTrue:[^nil].

	self should: [self runTest:self class sourceoasisp23fail5xml ]
		raise: self exceptionSet2