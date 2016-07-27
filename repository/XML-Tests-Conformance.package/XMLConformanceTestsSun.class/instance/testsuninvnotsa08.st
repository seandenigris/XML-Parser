as yet unclassified
testsuninvnotsa08
	"
    Tests the Standalone Document Declaration VC, ensuring that
    an NMTOKENS attribute needing normalization
    causes a validity error.
	 See XML Spec. 1.0 section: 2.9"

	(self class shouldSkipTests and: [testsToSkip includes: 'inv-not-sa08'])
		ifTrue:[^nil].

	self should: [self runTest:self class sourcesuninvalidnotsa08xml]
		raise: self exceptionSet