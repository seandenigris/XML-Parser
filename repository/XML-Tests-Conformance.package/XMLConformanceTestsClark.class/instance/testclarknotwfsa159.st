tests
testclarknotwfsa159
	"
    Uses '&' unquoted in an entity declaration,
    which is illegal syntax for an entity reference.
	 See XML Spec. 1.0 section: 2.3 [9]"

	(self class shouldSkipTests and: [testsToSkip includes: 'not-wf-sa-159'])
		ifTrue:[^nil].

	self should: [self runTest:self sourcexmltestnotwfsa159xml ]
		raise: self exceptionSet2