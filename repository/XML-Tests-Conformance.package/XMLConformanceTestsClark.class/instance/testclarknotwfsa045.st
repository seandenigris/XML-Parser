tests
testclarknotwfsa045
	"
    Invalid Empty Element Tag 
	 See XML Spec. 1.0 section: 3.1 [44]"

	(self class shouldSkipTests and: [testsToSkip includes: 'not-wf-sa-045'])
		ifTrue:[^nil].

	self should: [self runTest:self sourcexmltestnotwfsa045xml ]
		raise: self exceptionSet2