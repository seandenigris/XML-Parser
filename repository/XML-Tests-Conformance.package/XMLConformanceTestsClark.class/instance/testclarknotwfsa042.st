tests
testclarknotwfsa042
	"
     Invalid End Tag 
	 See XML Spec. 1.0 section: 3.1 [42]"

	(self class shouldSkipTests and: [testsToSkip includes: 'not-wf-sa-042'])
		ifTrue:[^nil].

	self should: [self runTest: self sourcexmltestnotwfsa042xml ]
		raise: self exceptionSet2