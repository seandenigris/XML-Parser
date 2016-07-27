tests
testclarknotwfsa050
	"
    Empty document, with no root element. 
	 See XML Spec. 1.0 section: 2.1 [1]"

	(self class shouldSkipTests and: [testsToSkip includes: 'not-wf-sa-050'])
		ifTrue:[^nil].

	self should: [self runTest: self sourcexmltestnotwfsa050xml ]
		raise: self exceptionSet2