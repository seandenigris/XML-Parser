tests
testoasisop03fail13
	"
    Use of illegal character within XML document.     
	 See XML Spec. 1.0 section: 2.3 [3]"

	(self class shouldSkipTests and: [testsToSkip includes: 'o-p03fail13'])
		ifTrue:[^nil].

	self should: [self runTest:self class sourceoasisp03fail13xml ]
		raise: self exceptionSet2