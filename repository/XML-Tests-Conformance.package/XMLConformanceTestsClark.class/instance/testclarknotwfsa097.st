tests
testclarknotwfsa097
	"
    Both quotes surrounding VersionNum must be the same. 
	 See XML Spec. 1.0 section: 2.8 [24]"

	(self class shouldSkipTests and: [testsToSkip includes: 'not-wf-sa-097'])
		ifTrue:[^nil].

	self should: [self runTest:self sourcexmltestnotwfsa097xml ]
		raise: self exceptionSet2