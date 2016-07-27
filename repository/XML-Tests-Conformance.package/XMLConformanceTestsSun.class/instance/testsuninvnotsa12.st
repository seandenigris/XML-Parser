as yet unclassified
testsuninvnotsa12
	"
    Tests the Standalone Document Declaration VC, ensuring that
    an ENTITY attribute needing normalization causes a validity error.
	 See XML Spec. 1.0 section: 2.9"

	(self class shouldSkipTests and: [testsToSkip includes: 'inv-not-sa12'])
		ifTrue:[^nil].

	self should: [self runTest:self class sourcesuninvalidnotsa12xml]
		raise: self exceptionSet