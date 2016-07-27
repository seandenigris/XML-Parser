tests
testclarknotwfsa019
	"
    End tags may not be abbreviated as '</>'.
	 See XML Spec. 1.0 section: 3.1 [42]"

	(self class shouldSkipTests and: [testsToSkip includes: 'not-wf-sa-019'])
		ifTrue:[^nil].

	self should: [self runTest: self sourcexmltestnotwfsa019xml ]
		raise: self exceptionSet2