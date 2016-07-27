tests
testclarknotwfsa108
	"
    No space in '<![CDATA['.
	 See XML Spec. 1.0 section: 2.7 [19]"

	(self class shouldSkipTests and: [testsToSkip includes: 'not-wf-sa-108'])
		ifTrue:[^nil].

	self should: [self runTest:self sourcexmltestnotwfsa108xml ]
		raise: self exceptionSet2