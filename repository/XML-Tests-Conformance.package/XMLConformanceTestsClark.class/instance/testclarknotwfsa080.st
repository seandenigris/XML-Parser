tests
testclarknotwfsa080
	"
    ENTITY can't reference itself directly or indirectly. 
	 See XML Spec. 1.0 section: 4.1 [68]"

	(self class shouldSkipTests and: [testsToSkip includes: 'not-wf-sa-080'])
		ifTrue:[^nil].

	self should: [self runTest:self  sourcexmltestnotwfsa080xml ]
		raise: self exceptionSet2