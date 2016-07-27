as yet unclassified
testsunelement03
	"
    Illegal markup (<% ... %>)
	 See XML Spec. 1.0 section: 3.1 [43]"

	(self class shouldSkipTests and: [testsToSkip includes: 'element03'])
		ifTrue:[^nil].

	self should: [self runTest:self class sourcesunnotwfelement03xml ]
		raise: self exceptionSet2