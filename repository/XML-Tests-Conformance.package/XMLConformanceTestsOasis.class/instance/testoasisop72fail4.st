tests
testoasisop72fail4
	"
     Entity name is a name, not an NMToken
    
	 See XML Spec. 1.0 section: 4.2 [72]"

	(self class shouldSkipTests and: [testsToSkip includes: 'o-p72fail4'])
		ifTrue:[^nil].

	self should: [self runTest:self class sourceoasisp72fail4xml ]
		raise: self exceptionSet2