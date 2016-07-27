as yet unclassified
testsuninvnotsa03
	"
    Tests the Standalone Document Declaration VC, ensuring that
    a reference to externally defined entity causes a validity error.
	 See XML Spec. 1.0 section: 2.9"

	(self class shouldSkipTests and: [testsToSkip includes: 'inv-not-sa03'])
		ifTrue:[^nil].

	self should: [self runTest:self class sourcesuninvalidnotsa03xml]
		raise: self exceptionSet