tests
testoasisop03fail21
	"
    Use of illegal character within XML document.     
	 See XML Spec. 1.0 section: 2.3 [3]"

	(self class shouldSkipTests and: [testsToSkip includes: 'o-p03fail21'])
		ifTrue:[^nil].

	self should: [self runTest: self class sourceoasisp03fail21xml ]
		raise: self exceptionSet2