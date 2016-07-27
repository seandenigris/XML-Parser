tests
testclarknotwfsa005
	"
    Processing instructions end in '?>' not '?'. 
	 See XML Spec. 1.0 section: 2.6 [16]"

	(self class shouldSkipTests and: [testsToSkip includes: 'not-wf-sa-005'])
		ifTrue:[^nil].

	self should: [self runTest: self sourcexmltestnotwfsa005xml ]
		raise: self exceptionSet2