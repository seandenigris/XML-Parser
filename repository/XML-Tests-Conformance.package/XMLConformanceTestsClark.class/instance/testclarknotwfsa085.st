tests
testclarknotwfsa085
	"
    Public IDs may not contain  [ . 
	 See XML Spec. 1.0 section: 2.3 [13]"

	(self class shouldSkipTests and: [testsToSkip includes: 'not-wf-sa-085'])
		ifTrue:[^nil].

	self should: [self runTest: self sourcexmltestnotwfsa085xml ]
		raise: self exceptionSet2