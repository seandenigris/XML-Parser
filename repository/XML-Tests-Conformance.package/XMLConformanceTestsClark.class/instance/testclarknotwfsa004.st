tests
testclarknotwfsa004
	"
    SGML-ism:  processing instructions end in '?>' not '>'. 
	 See XML Spec. 1.0 section: 2.6 [16]"

	(self class shouldSkipTests and: [testsToSkip includes: 'not-wf-sa-004'])
		ifTrue:[^nil].

	self should: [self runTest: self sourcexmltestnotwfsa004xml ]
		raise: self exceptionSet2