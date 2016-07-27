as yet unclassified
testsundtd04
	"
    PUBLIC literal must be quoted
	 See XML Spec. 1.0 section: 4.2.2 [75]"

	(self class shouldSkipTests and: [testsToSkip includes: 'dtd04'])
		ifTrue:[^nil].

	self should: [self runTest:self class sourcesunnotwfdtd04xml ]
		raise: self exceptionSet2