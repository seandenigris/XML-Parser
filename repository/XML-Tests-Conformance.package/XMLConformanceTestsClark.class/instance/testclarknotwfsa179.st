tests
testclarknotwfsa179
	"
    Invalid syntax matching double quote is missing. 
	 See XML Spec. 1.0 section: 4.1 [66]"

	(self class shouldSkipTests and: [testsToSkip includes: 'not-wf-sa-179'])
		ifTrue:[^nil].

	self should: [self runTest:self sourcexmltestnotwfsa179xml ]
		raise: self exceptionSet2