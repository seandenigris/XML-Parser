tests
testclarknotwfsa107
	"
     Invalid document type declaration.  CDATA alone is invalid.
	 See XML Spec. 1.0 section: 2.8 [28]"

	(self class shouldSkipTests and: [testsToSkip includes: 'not-wf-sa-107'])
		ifTrue:[^nil].

	self should: [self runTest:self sourcexmltestnotwfsa107xml ]
		raise: self exceptionSet2