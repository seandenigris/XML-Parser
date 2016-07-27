tests
testclarknotwfsa035
	"
    The '<' character is a markup delimiter and must
    start an element, CDATA section, PI, or comment. 
	 See XML Spec. 1.0 section: 3.1 [43]"

	(self class shouldSkipTests and: [testsToSkip includes: 'not-wf-sa-035'])
		ifTrue:[^nil].

	self should: [self runTest:self sourcexmltestnotwfsa035xml ]
		raise: self exceptionSet2