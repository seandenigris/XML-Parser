as yet unclassified
testsundtd03
	"
    PE name immediately followed by  ; 
	 See XML Spec. 1.0 section: 4.1 [69]"

	(self class shouldSkipTests and: [testsToSkip includes: 'dtd03'])
		ifTrue:[^nil].

	self should: [self runTest:self class sourcesunnotwfdtd03xml ]
		raise: self exceptionSet2