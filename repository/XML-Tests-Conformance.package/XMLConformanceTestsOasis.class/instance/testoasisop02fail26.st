tests
testoasisop02fail26
	"
    Use of illegal character within XML document.     
	 See XML Spec. 1.0 section: 2.2 [2]"

	(self class shouldSkipTests and: [testsToSkip includes: 'o-p02fail26'])
		ifTrue:[^nil].

	self should: [self runTest:self class sourceoasisp02fail26xml ]
		raise: self exceptionSet2