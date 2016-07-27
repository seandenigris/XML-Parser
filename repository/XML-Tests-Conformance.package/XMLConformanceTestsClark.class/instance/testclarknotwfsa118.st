tests
testclarknotwfsa118
	"
    Entity reference expansion is not recursive.
	 See XML Spec. 1.0 section: 4.1 [68]"

	(self class shouldSkipTests and: [testsToSkip includes: 'not-wf-sa-118'])
		ifTrue:[^nil].

	self should: [self runTest: self sourcexmltestnotwfsa118xml ]
		raise: self exceptionSet2