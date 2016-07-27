as yet unclassified
testsunelement00
	"
    EOF in middle of incomplete ETAG
	 See XML Spec. 1.0 section: 3.1 [42]"

	(self class shouldSkipTests and: [testsToSkip includes: 'element00'])
		ifTrue:[^nil].

	self should: [self runTest:self class sourcesunnotwfelement00xml ]
		raise: self exceptionSet2