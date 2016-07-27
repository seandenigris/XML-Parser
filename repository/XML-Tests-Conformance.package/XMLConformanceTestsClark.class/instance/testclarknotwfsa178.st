tests
testclarknotwfsa178
	"
    Invalid syntax matching double quote is missing. 
	 See XML Spec. 1.0 section: 3.1 [41]"

	(self class shouldSkipTests and: [testsToSkip includes: 'not-wf-sa-178'])
		ifTrue:[^nil].

	self should: [self runTest:self sourcexmltestnotwfsa178xml ]
		raise: self exceptionSet2