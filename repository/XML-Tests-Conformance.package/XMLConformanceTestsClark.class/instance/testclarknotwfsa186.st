tests
testclarknotwfsa186
	"
    Whitespace is required between attribute/value pairs. 
	 See XML Spec. 1.0 section: 3.1 [44]"

	(self class shouldSkipTests and: [testsToSkip includes: 'not-wf-sa-186'])
		ifTrue:[^nil].

	self should: [self runTest:self sourcexmltestnotwfsa186xml ]
		raise: self exceptionSet2