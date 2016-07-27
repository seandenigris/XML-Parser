tests
testclarknotwfsa017
	"
    CDATA sections need a terminating ']]>'. 
	 See XML Spec. 1.0 section: 2.7 [18]"

	(self class shouldSkipTests and: [testsToSkip includes: 'not-wf-sa-017'])
		ifTrue:[^nil].

	self should: [self runTest: self  sourcexmltestnotwfsa017xml ]
		raise: self exceptionSet2