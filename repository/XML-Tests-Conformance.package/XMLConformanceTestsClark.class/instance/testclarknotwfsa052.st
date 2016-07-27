tests
testclarknotwfsa052
	"
    Invalid character reference. 
	 See XML Spec. 1.0 section: 4.1 [66]"

	(self class shouldSkipTests and: [testsToSkip includes: 'not-wf-sa-052'])
		ifTrue:[^nil].

	self should: [self runTest:self  sourcexmltestnotwfsa052xml ]
		raise: self exceptionSet2