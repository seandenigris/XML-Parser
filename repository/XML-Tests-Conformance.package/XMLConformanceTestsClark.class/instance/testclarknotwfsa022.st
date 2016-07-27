tests
testclarknotwfsa022
	"
    Character references end with semicolons, always!
	 See XML Spec. 1.0 section: 4.1 [66]"

	(self class shouldSkipTests and: [testsToSkip includes: 'not-wf-sa-022'])
		ifTrue:[^nil].

	self should: [self runTest:self sourcexmltestnotwfsa022xml ]
		raise: self exceptionSet2