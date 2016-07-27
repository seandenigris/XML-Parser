tests
testoasisop03fail1
	"
    Use of illegal character within XML document.     
	 See XML Spec. 1.0 section: 2.3 [3]"

	(self class shouldSkipTests and: [testsToSkip includes: 'o-p03fail1'])
		ifTrue:[^nil].

	self should: [self runTest: self class sourceoasisp03fail1xml ]
		raise: self exceptionSet2