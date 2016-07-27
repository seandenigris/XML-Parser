as yet unclassified
testsunutf16b
	"
    Tests reading an invalid  big endian  UTF-16 document
	 See XML Spec. 1.0 section: 4.3.3 2.8"

	(self class shouldSkipTests and: [testsToSkip includes: 'utf16b'])
		ifTrue:[^nil].

	self should: [self runTest:self class sourcesuninvalidutf16bxml]
		raise: self exceptionSet