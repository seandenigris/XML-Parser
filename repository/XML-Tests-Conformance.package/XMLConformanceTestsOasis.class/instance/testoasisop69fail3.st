tests
testoasisop69fail3
	"
     no S before ';'
    
	 See XML Spec. 1.0 section: 4.1 [69]"

	(self class shouldSkipTests and: [testsToSkip includes: 'o-p69fail3'])
		ifTrue:[^nil].

	self should: [self runTest:self class sourceoasisp69fail3xml ]
		raise: self exceptionSet2