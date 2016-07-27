as yet unclassified
testsuninvnotsa05
	"
    Tests the Standalone Document Declaration VC, ensuring that
    a token attribute that needs normalization causes a validity error.
	 See XML Spec. 1.0 section: 2.9"

	(self class shouldSkipTests and: [testsToSkip includes: 'inv-not-sa05'])
		ifTrue:[^nil].

	self should: [self runTest:self class sourcesuninvalidnotsa05xml]
		raise: self exceptionSet