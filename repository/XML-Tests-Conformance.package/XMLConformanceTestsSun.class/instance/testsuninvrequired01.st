as yet unclassified
testsuninvrequired01
	"
    Tests the Attribute Value Type (declared)
    VC for the xml:space attribute
	 See XML Spec. 1.0 section: 3.1 2.10"

	(self class shouldSkipTests and: [testsToSkip includes: 'inv-required01'])
		ifTrue:[^nil].

	self should: [self runTest:self class sourcesuninvalidrequired01xml]
		raise: self exceptionSet