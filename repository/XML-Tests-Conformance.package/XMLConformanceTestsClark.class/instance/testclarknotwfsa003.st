tests
testclarknotwfsa003
	"
    Processing Instruction target name is required.
	 See XML Spec. 1.0 section: 2.6 [16]"

	(self class shouldSkipTests and: [testsToSkip includes: 'not-wf-sa-003'])
		ifTrue:[^nil].

	self should: [self runTest: self sourcexmltestnotwfsa003xml ]
		raise: self exceptionSet2