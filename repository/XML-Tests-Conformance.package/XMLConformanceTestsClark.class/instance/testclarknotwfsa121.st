tests
testclarknotwfsa121
	"
    A name of an ENTITY was started with an invalid character. 
	 See XML Spec. 1.0 section: 4.1 [68]"

	(self class shouldSkipTests and: [testsToSkip includes: 'not-wf-sa-121'])
		ifTrue:[^nil].

	self should: [self runTest:self sourcexmltestnotwfsa121xml ]
		raise: self exceptionSet2