as yet unclassified
testsuninvnotsa11
	"
    Tests the Standalone Document Declaration VC, ensuring that
    an IDREFS attribute needing normalization causes a validity error.
	 See XML Spec. 1.0 section: 2.9"

	(self class shouldSkipTests and: [testsToSkip includes: 'inv-not-sa11'])
		ifTrue:[^nil].

	self should: [self runTest:self class sourcesuninvalidnotsa11xml]
		raise: self exceptionSet