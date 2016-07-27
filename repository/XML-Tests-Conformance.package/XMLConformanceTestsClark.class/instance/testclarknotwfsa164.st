tests
testclarknotwfsa164
	"
    Invalid placement of Parameter entity reference. 
	 See XML Spec. 1.0 section: 4.1 [69]"

	(self class shouldSkipTests and: [testsToSkip includes: 'not-wf-sa-164'])
		ifTrue:[^nil].

	self should: [self runTest:self sourcexmltestnotwfsa164xml ]
		raise: self exceptionSet2