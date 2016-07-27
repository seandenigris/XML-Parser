as yet unclassified
testsuninvnotsa10
	"
    Tests the Standalone Document Declaration VC, ensuring that
    an IDREF attribute needing normalization causes a validity error.
	 See XML Spec. 1.0 section: 2.9"

	(self class shouldSkipTests and: [testsToSkip includes: 'inv-not-sa10'])
		ifTrue:[^nil].

	self should: [self runTest:self class sourcesuninvalidnotsa10xml]
		raise: self exceptionSet