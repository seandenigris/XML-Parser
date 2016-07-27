tests
testclarknotwfsa077
	"
    Undefined ENTITY bar. 
	 See XML Spec. 1.0 section: 41. [68]"

	(self class shouldSkipTests and: [testsToSkip includes: 'not-wf-sa-077'])
		ifTrue:[^nil].

	self should: [self runTest: self sourcexmltestnotwfsa077xml ]
		raise: self exceptionSet2