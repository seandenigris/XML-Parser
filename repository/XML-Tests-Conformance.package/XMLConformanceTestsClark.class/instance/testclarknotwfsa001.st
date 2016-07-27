tests
testclarknotwfsa001
	"
    Attribute values must start with attribute names, not  ? . 
	 See XML Spec. 1.0 section: 3.1 [41]"

	(self class shouldSkipTests and: [testsToSkip includes: 'not-wf-sa-001'])
		ifTrue:[^nil].

	self should: [self runTest: self  sourcexmltestnotwfsa001xml ]
		raise: self exceptionSet2