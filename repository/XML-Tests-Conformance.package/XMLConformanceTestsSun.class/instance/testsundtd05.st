as yet unclassified
testsundtd05
	"
    SYSTEM identifier must be quoted
	 See XML Spec. 1.0 section: 4.2.2 [75]"

	(self class shouldSkipTests and: [testsToSkip includes: 'dtd05'])
		ifTrue:[^nil].

	self should: [self runTest:self class sourcesunnotwfdtd05xml ]
		raise: self exceptionSet2