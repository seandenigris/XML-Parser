tests
testclarknotwfsa112
	"
    CDATA sections start '<![CDATA[', not '<!cdata['.
	 See XML Spec. 1.0 section: 2.7 [19]"

	(self class shouldSkipTests and: [testsToSkip includes: 'not-wf-sa-112'])
		ifTrue:[^nil].

	self should: [self runTest:self sourcexmltestnotwfsa112xml ]
		raise: self exceptionSet2