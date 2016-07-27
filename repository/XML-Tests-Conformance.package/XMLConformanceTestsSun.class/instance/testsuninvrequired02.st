as yet unclassified
testsuninvrequired02
	"
    Tests the Attribute Value Type (declared)
    VC for the xml:lang attribute
	 See XML Spec. 1.0 section: 3.1 2.12"

	(self class shouldSkipTests and: [testsToSkip includes: 'inv-required02'])
		ifTrue:[^nil].

	self should: [self runTest:self class sourcesuninvalidrequired02xml]
		raise: self exceptionSet