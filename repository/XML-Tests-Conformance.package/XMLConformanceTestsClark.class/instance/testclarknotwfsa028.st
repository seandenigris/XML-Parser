tests
testclarknotwfsa028
	"
    Processing instructions must end with '?>'. 
	 See XML Spec. 1.0 section: 2.6 [16]"

	(self class shouldSkipTests and: [testsToSkip includes: 'not-wf-sa-028'])
		ifTrue:[^nil].

	self should: [self runTest: self sourcexmltestnotwfsa028xml ]
		raise: self exceptionSet2