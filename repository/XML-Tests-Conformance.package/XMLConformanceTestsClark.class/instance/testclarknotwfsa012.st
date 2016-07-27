tests
testclarknotwfsa012
	"
    SGML-ism:  attribute values must be quoted in all cases. 
	 See XML Spec. 1.0 section: 2.3 [10]"

	(self class shouldSkipTests and: [testsToSkip includes: 'not-wf-sa-012'])
		ifTrue:[^nil].

	self should: [self runTest: self sourcexmltestnotwfsa012xml ]
		raise: self exceptionSet2