tests
testoasisop39fail4
	"
         
	 See XML Spec. 1.0 section: 3 [39]"

	(self class shouldSkipTests and: [testsToSkip includes: 'o-p39fail4'])
		ifTrue:[^nil].

	self should: [self runTest: self class sourceoasisp39fail4xml ]
		raise: self exceptionSet2