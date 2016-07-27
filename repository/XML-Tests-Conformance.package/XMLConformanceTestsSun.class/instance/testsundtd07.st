as yet unclassified
testsundtd07
	"
    Text declarations (which optionally begin any external entity)
    are required to have  encoding=... . 
	 See XML Spec. 1.0 section: 4.3.1 [77]"

	(self class shouldSkipTests and: [testsToSkip includes: 'dtd07'])
		ifTrue:[^nil].

	self should: [self runTest:self class sourcesunnotwfdtd07xml ]
		raise: self exceptionSet2