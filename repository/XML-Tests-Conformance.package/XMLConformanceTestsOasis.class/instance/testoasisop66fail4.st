tests
testoasisop66fail4
	"
     only hex digits in hex references
    
	 See XML Spec. 1.0 section: 4.1 [66]"

	(self class shouldSkipTests and: [testsToSkip includes: 'o-p66fail4'])
		ifTrue:[^nil].

	self should: [self runTest:self class sourceoasisp66fail4xml ]
		raise: self exceptionSet2