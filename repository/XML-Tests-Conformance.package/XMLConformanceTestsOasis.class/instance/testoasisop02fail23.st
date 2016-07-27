tests
testoasisop02fail23
	"
    Use of illegal character within XML document.     
	 See XML Spec. 1.0 section: 2.2 [2]"

	(self class shouldSkipTests and: [testsToSkip includes: 'o-p02fail23'])
		ifTrue:[^nil].

	self should: [self runTest:self class sourceoasisp02fail23xml ]
		raise: self exceptionSet2