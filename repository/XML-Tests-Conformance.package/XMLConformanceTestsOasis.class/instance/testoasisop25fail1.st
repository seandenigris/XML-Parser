tests
testoasisop25fail1
	"
    Comment is illegal in VersionInfo.     
	 See XML Spec. 1.0 section: 2.8 [25]"

	(self class shouldSkipTests and: [testsToSkip includes: 'o-p25fail1'])
		ifTrue:[^nil].

	self should: [self runTest:self class sourceoasisp25fail1xml ]
		raise: self exceptionSet2