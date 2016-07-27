tests
testclarknotwfsa015
	"
    Attribute values need a value, not just an equals sign. 
	 See XML Spec. 1.0 section: 3.1 [41]"

	(self class shouldSkipTests and: [testsToSkip includes: 'not-wf-sa-015'])
		ifTrue:[^nil].

	self should: [self runTest: self sourcexmltestnotwfsa015xml ]
		raise: self exceptionSet2