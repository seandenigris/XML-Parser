tests
testclarknotwfsa176
	"
    Start tags must have matching end tags.
	 See XML Spec. 1.0 section: 3 [39]"

	(self class shouldSkipTests and: [testsToSkip includes: 'not-wf-sa-176'])
		ifTrue:[^nil].

	self should: [self runTest:self sourcexmltestnotwfsa176xml ]
		raise: self exceptionSet2