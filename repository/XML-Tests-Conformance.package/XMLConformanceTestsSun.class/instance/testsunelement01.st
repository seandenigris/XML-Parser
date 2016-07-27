as yet unclassified
testsunelement01
	"
    EOF in middle of incomplete ETAG
	 See XML Spec. 1.0 section: 3.1 [42]"

	(self class shouldSkipTests and: [testsToSkip includes: 'element01'])
		ifTrue:[^nil].

	self should: [self runTest:self class sourcesunnotwfelement01xml ]
		raise: self exceptionSet2