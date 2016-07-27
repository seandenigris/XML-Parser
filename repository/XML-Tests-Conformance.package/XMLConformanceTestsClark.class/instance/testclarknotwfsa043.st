tests
testclarknotwfsa043
	"
    Provides #PCDATA text after the document element. 
	 See XML Spec. 1.0 section: 2.8 [27]"

	(self class shouldSkipTests and: [testsToSkip includes: 'not-wf-sa-043'])
		ifTrue:[^nil].

	self should: [self runTest: self sourcexmltestnotwfsa043xml ]
		raise: self exceptionSet2