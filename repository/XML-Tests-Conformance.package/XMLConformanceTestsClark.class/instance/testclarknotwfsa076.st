tests
testclarknotwfsa076
	"
    Undefined ENTITY foo. 
	 See XML Spec. 1.0 section: 4.1 [68]"

	(self class shouldSkipTests and: [testsToSkip includes: 'not-wf-sa-076'])
		ifTrue:[^nil].

	self should: [self runTest:self sourcexmltestnotwfsa076xml ]
		raise: self exceptionSet2