tests
testclarknotwfextsa001
	"
    Tests the No Recursion WFC by having an external general
    entity be self-recursive.
	 See XML Spec. 1.0 section: 4.1"

	(self class shouldSkipTests and: [testsToSkip includes: 'not-wf-ext-sa-001'])
		ifTrue:[^nil].
	self should: [self runTest: self sourcexmltestnotwfsa001xml ]
		raise: self exceptionSet2