as yet unclassified
testsunelement04
	"
    Illegal markup (<!ELEMENT ... >)
	 See XML Spec. 1.0 section: 3.1 [43]"

	(self class shouldSkipTests and: [testsToSkip includes: 'element04'])
		ifTrue:[^nil].

	self should: [self runTest:self class sourcesunnotwfelement04xml ]
		raise: self exceptionSet2