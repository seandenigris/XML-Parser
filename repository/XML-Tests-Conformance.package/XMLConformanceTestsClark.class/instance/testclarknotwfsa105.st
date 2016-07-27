tests
testclarknotwfsa105
	"
    Invalid placement of CDATA section. 
	 See XML Spec. 1.0 section: 2.7 "

	(self class shouldSkipTests and: [testsToSkip includes: 'not-wf-sa-105'])
		ifTrue:[^nil].

	self should: [self runTest:self  sourcexmltestnotwfsa105xml ]
		raise: self exceptionSet2