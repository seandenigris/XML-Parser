tests
testclarknotwfsa047
	"
    Invalid empty element tag invalid whitespace 
	 See XML Spec. 1.0 section: 3.1 [44]"

	(self class shouldSkipTests and: [testsToSkip includes: 'not-wf-sa-047'])
		ifTrue:[^nil].

	self should: [self runTest:self  sourcexmltestnotwfsa047xml ]
		raise: self exceptionSet2