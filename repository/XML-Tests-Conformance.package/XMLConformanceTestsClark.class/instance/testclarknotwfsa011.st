tests
testclarknotwfsa011
	"
    SGML-ism:  attribute values must be explicitly assigned a
    value, it can't act as a boolean toggle. 
	 See XML Spec. 1.0 section: 3.1 [41]"

	(self class shouldSkipTests and: [testsToSkip includes: 'not-wf-sa-011'])
		ifTrue:[^nil].

	self should: [self runTest: self sourcexmltestnotwfsa011xml ]
		raise: self exceptionSet2