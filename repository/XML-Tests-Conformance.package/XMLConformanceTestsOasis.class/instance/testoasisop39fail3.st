tests
testoasisop39fail3
	"
    XML documents contain one or more elements
	 See XML Spec. 1.0 section: 3 [39]"

	(self class shouldSkipTests and: [testsToSkip includes: 'o-p39fail3'])
		ifTrue:[^nil].

	self should: [self runTest:self class sourceoasisp39fail3xml ]
		raise: self exceptionSet2