tests
testoasisop69fail2
	"
     no S after '%'
    
	 See XML Spec. 1.0 section: 4.1 [69]"

	(self class shouldSkipTests and: [testsToSkip includes: 'o-p69fail2'])
		ifTrue:[^nil].

	self should: [self runTest: self class sourceoasisp69fail2xml ]
		raise: self exceptionSet2