tests
testclarknotwfsa007
	"
    General entity references have no whitespace after the
    entity name and before the semicolon. 
	 See XML Spec. 1.0 section: 4.1 [68]"

	(self class shouldSkipTests and: [testsToSkip includes: 'not-wf-sa-007'])
		ifTrue:[^nil].

	self should: [self runTest: self sourcexmltestnotwfsa007xml ]
		raise: self exceptionSet2