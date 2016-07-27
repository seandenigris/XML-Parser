tests
testclarknotwfsa055
	"
    Invalid Document Type Definition format. 
	 See XML Spec. 1.0 section: 2.8 [28]"

	(self class shouldSkipTests and: [testsToSkip includes: 'not-wf-sa-055'])
		ifTrue:[^nil].

	self should: [self runTest:self sourcexmltestnotwfsa055xml ]
		raise: self exceptionSet2