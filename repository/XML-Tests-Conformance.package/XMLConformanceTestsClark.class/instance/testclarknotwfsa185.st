tests
testclarknotwfsa185
	"
    Tests the Entity Declared WFC.
    Note:  a nonvalidating parser is permitted not to report
    this WFC violation, since it would need to read an external
    parameter entity to distinguish it from a violation of
    the Standalone Declaration VC.
	 See XML Spec. 1.0 section: 4.1"

	(self class shouldSkipTests and: [testsToSkip includes: 'not-wf-sa-185'])
		ifTrue:[^nil].

	self should: [self runTest:self sourcexmltestnotwfsa185xml ]
		raise: self exceptionSet2