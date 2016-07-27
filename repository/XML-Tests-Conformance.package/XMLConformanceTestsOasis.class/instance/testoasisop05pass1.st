tests
testoasisop05pass1
	"
     various valid Name constructions
    
	 See XML Spec. 1.0 section: 2.3 [5]"

	(self class shouldSkipTests and: [testsToSkip includes: 'o-p05pass1'])
		ifTrue:[^nil].

	self should: [self runTest:self class sourceoasisp05pass1xml]
		raise: self exceptionSet