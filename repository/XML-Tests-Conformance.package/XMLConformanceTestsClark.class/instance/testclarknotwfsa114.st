tests
testclarknotwfsa114
	"
    General entity values must use valid reference syntax;
    this reference is malformed.
	 See XML Spec. 1.0 section: 2.3 [9]"

	(self class shouldSkipTests and: [testsToSkip includes: 'not-wf-sa-114'])
		ifTrue:[^nil].

	self should: [self runTest:self sourcexmltestnotwfsa114xml ]
		raise: self exceptionSet2