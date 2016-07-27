tests
testclarknotwfsa103
	"
    End-tag required for element foo. 
	 See XML Spec. 1.0 section: 4.3.2"

	(self class shouldSkipTests and: [testsToSkip includes: 'not-wf-sa-103'])
		ifTrue:[^nil].

	self should: [self runTest:self sourcexmltestnotwfsa103xml ]
		raise: self exceptionSet2