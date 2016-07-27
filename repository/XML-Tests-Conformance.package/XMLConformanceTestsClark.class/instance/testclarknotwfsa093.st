tests
testclarknotwfsa093
	"
    Hexadecimal character references may not use the uppercase 'X'.
	 See XML Spec. 1.0 section: 4.1 [66]"

	(self class shouldSkipTests and: [testsToSkip includes: 'not-wf-sa-093'])
		ifTrue:[^nil].

	self should: [self runTest:self sourcexmltestnotwfsa093xml ]
		raise: self exceptionSet2