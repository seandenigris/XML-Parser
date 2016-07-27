tests
testclarknotwfsa016
	"
    Attribute values need an associated name.
	 See XML Spec. 1.0 section: 3.1 [41]"

	(self class shouldSkipTests and: [testsToSkip includes: 'not-wf-sa-016'])
		ifTrue:[^nil].

	self should: [self runTest: self sourcexmltestnotwfsa016xml ]
		raise: self exceptionSet2