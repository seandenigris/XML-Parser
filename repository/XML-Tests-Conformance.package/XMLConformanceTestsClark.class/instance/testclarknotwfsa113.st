tests
testclarknotwfsa113
	"
    Parameter entity values must use valid reference syntax;
    this reference is malformed.
	 See XML Spec. 1.0 section: 2.3 [9]"

	(self class shouldSkipTests and: [testsToSkip includes: 'not-wf-sa-113'])
		ifTrue:[^nil].

	self should: [self runTest:self sourcexmltestnotwfsa113xml ]
		raise: self exceptionSet2