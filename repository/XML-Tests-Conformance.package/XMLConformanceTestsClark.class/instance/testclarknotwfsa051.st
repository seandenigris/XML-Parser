tests
testclarknotwfsa051
	"
     CDATA is invalid at top level of document.
	 See XML Spec. 1.0 section: 2.7 [18]"

	(self class shouldSkipTests and: [testsToSkip includes: 'not-wf-sa-051'])
		ifTrue:[^nil].

	self should: [self runTest:self sourcexmltestnotwfsa051xml ]
		raise: self exceptionSet2