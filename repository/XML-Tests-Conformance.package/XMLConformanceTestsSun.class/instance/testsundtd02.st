as yet unclassified
testsundtd02
	"
    PE name immediately after  % 
	 See XML Spec. 1.0 section: 4.1 [69]"

	(self class shouldSkipTests and: [testsToSkip includes: 'dtd02'])
		ifTrue:[^nil].

	self should: [self runTest:self class sourcesunnotwfdtd02xml ]
		raise: self exceptionSet2