tests
testclarknotwfsa013
	"
    The quotes on both ends of an attribute value must match. 
	 See XML Spec. 1.0 section: 2.3 [10]"

	(self class shouldSkipTests and: [testsToSkip includes: 'not-wf-sa-013'])
		ifTrue:[^nil].

	self should: [self runTest:self sourcexmltestnotwfsa013xml ]
		raise: self exceptionSet2