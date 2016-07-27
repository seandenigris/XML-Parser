tests
testoasisop02fail22
	"
    Use of illegal character within XML document.     
	 See XML Spec. 1.0 section: 2.2 [2]"

	(self class shouldSkipTests and: [testsToSkip includes: 'o-p02fail22'])
		ifTrue:[^nil].

	self should: [self runTest: self class sourceoasisp02fail22xml ]
		raise: self exceptionSet2