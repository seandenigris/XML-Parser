as yet unclassified
testsuninvnotsa06
	"
    Tests the Standalone Document Declaration VC, ensuring that
    a NOTATION attribute that needs normalization
    causes a validity error.
	 See XML Spec. 1.0 section: 2.9"

	(self class shouldSkipTests and: [testsToSkip includes: 'inv-not-sa06'])
		ifTrue:[^nil].

	self should: [self runTest:self class sourcesuninvalidnotsa06xml]
		raise: self exceptionSet