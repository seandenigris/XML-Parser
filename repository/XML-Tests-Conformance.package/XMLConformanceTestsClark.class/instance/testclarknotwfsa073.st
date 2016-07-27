tests
testclarknotwfsa073
	"
    Undefined ENTITY f. 
	 See XML Spec. 1.0 section: 4.1 [68]"

	(self class shouldSkipTests and: [testsToSkip includes: 'not-wf-sa-073'])
		ifTrue:[^nil].

	self should: [self runTest:self sourcexmltestnotwfsa073xml ]
		raise: self exceptionSet2