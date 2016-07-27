as yet unclassified
testsunutf16l
	"
    Tests reading an invalid  little endian  UTF-16 document
	 See XML Spec. 1.0 section: 4.3.3 2.8"

	(self class shouldSkipTests and: [testsToSkip includes: 'utf16l'])
		ifTrue:[^nil].

	self should: [self runTest:self class sourcesuninvalidutf16lxml]
		raise: self exceptionSet