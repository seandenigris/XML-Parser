tests
testoasisop02fail29
	"
    Use of illegal character within XML document.     
	 See XML Spec. 1.0 section: 2.2 [2]"

	(self class shouldSkipTests and: [testsToSkip includes: 'o-p02fail29'])
		ifTrue:[^nil].

	self should: [self runTest:self class sourceoasisp02fail29xml ]
		raise: self exceptionSet2