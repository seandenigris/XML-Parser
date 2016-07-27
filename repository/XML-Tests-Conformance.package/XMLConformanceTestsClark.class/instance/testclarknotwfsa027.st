tests
testclarknotwfsa027
	"
    Comments must be terminated with  --> .
	 See XML Spec. 1.0 section: 2.5 [15]"

	(self class shouldSkipTests and: [testsToSkip includes: 'not-wf-sa-027'])
		ifTrue:[^nil].

	self should: [self runTest:self  sourcexmltestnotwfsa027xml ]
		raise: self exceptionSet2