tests
testclarknotwfsa049
	"
    Missing start tag 
	 See XML Spec. 1.0 section: 3.1 [40]"

	(self class shouldSkipTests and: [testsToSkip includes: 'not-wf-sa-049'])
		ifTrue:[^nil].

	self should: [self runTest:self  sourcexmltestnotwfsa049xml ]
		raise: self exceptionSet2