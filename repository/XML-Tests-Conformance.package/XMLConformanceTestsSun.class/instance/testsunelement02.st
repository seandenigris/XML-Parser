as yet unclassified
testsunelement02
	"
    Illegal markup (<%@ ... %>)
	 See XML Spec. 1.0 section: 3.1 [43]"

	(self class shouldSkipTests and: [testsToSkip includes: 'element02'])
		ifTrue:[^nil].

	self should: [self runTest:self class sourcesunnotwfelement02xml ]
		raise: self exceptionSet2