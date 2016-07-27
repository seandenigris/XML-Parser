tests
testclarknotwfsa163
	"
    Invalid placement of Parameter entity reference. 
	 See XML Spec. 1.0 section: 4.1 [69]"

	(self class shouldSkipTests and: [testsToSkip includes: 'not-wf-sa-163'])
		ifTrue:[^nil].

	self should: [self runTest:self sourcexmltestnotwfsa163xml ]
		raise: self exceptionSet2