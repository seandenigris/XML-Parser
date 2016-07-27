tests
testclarknotwfsa021
	"
    Attribute values may not contain literal '&'
    characters except as part of an entity reference. 
	 See XML Spec. 1.0 section: 2.3 [10]"

	(self class shouldSkipTests and: [testsToSkip includes: 'not-wf-sa-021'])
		ifTrue:[^nil].

	self should: [self runTest:self sourcexmltestnotwfsa021xml ]
		raise: self exceptionSet2