tests
testclarknotwfsa046
	"
    This start (or empty element) tag was not terminated correctly. 
	 See XML Spec. 1.0 section: 3.1 [40]"

	(self class shouldSkipTests and: [testsToSkip includes: 'not-wf-sa-046'])
		ifTrue:[^nil].

	self should: [self runTest: self sourcexmltestnotwfsa046xml ]
		raise: self exceptionSet2