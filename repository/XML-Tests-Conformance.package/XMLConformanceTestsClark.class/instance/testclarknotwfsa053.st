tests
testclarknotwfsa053
	"
    End tag does not match start tag. 
	 See XML Spec. 1.0 section: 3.1 [42]"

	(self class shouldSkipTests and: [testsToSkip includes: 'not-wf-sa-053'])
		ifTrue:[^nil].

	self should: [self runTest:self sourcexmltestnotwfsa053xml]
		raise: self exceptionSet2