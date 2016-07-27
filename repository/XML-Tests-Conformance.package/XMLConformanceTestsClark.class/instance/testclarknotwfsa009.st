tests
testclarknotwfsa009
	"
    Character references may have only decimal or numeric strings.
	 See XML Spec. 1.0 section: 4.1 [66]"

	(self class shouldSkipTests and: [testsToSkip includes: 'not-wf-sa-009'])
		ifTrue:[^nil].

	self should: [self runTest: self sourcexmltestnotwfsa009xml ]
		raise: self exceptionSet2