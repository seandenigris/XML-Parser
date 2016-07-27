tests
testoasisop10fail2
	"
     attribute values exclude '&'
    
	 See XML Spec. 1.0 section: 2.3 [10]"

	(self class shouldSkipTests and: [testsToSkip includes: 'o-p10fail2'])
		ifTrue:[^nil].

	self should: [self runTest:self class sourceoasisp10fail2xml ]
		raise: self exceptionSet2