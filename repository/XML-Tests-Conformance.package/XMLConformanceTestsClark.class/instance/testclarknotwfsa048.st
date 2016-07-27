tests
testclarknotwfsa048
	"
    Provides a CDATA section after the roor element.
	 See XML Spec. 1.0 section: 2.8 [27]"

	(self class shouldSkipTests and: [testsToSkip includes: 'not-wf-sa-048'])
		ifTrue:[^nil].

	self should: [self runTest:self sourcexmltestnotwfsa048xml ]
		raise: self exceptionSet2