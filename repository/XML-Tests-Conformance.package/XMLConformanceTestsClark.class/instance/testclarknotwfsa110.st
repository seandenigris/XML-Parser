tests
testclarknotwfsa110
	"
    Entity reference must be in content of element. 
	 See XML Spec. 1.0 section: 4.1 [68]"

	(self class shouldSkipTests and: [testsToSkip includes: 'not-wf-sa-110'])
		ifTrue:[^nil].

	self should: [self runTest:self sourcexmltestnotwfsa110xml ]
		raise: self exceptionSet2