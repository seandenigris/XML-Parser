tests
testclarknotwfsa039
	"
    Tests the Element Type Match WFC - end tag name must
    match start tag name.
	 See XML Spec. 1.0 section: 3"

	(self class shouldSkipTests and: [testsToSkip includes: 'not-wf-sa-039'])
		ifTrue:[^nil].

	self should: [self runTest:self sourcexmltestnotwfsa039xml ]
		raise: self exceptionSet2