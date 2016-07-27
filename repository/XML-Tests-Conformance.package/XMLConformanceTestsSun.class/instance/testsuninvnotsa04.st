as yet unclassified
testsuninvnotsa04
	"
    Tests the Standalone Document Declaration VC, ensuring that
    attributes needing defaulting cause a validity error.
	 See XML Spec. 1.0 section: 2.9"

	(self class shouldSkipTests and: [testsToSkip includes: 'inv-not-sa04'])
		ifTrue:[^nil].

	self should: [self runTest:self class sourcesuninvalidnotsa04xml]
		raise: self exceptionSet