tests
testclarknotwfsa010
	"
    Ampersand may only appear as part of a general entity reference.
	 See XML Spec. 1.0 section: 4.1 [68]"

	(self class shouldSkipTests and: [testsToSkip includes: 'not-wf-sa-010'])
		ifTrue:[^nil].

	self should: [self runTest: self sourcexmltestnotwfsa010xml ]
		raise: self exceptionSet2