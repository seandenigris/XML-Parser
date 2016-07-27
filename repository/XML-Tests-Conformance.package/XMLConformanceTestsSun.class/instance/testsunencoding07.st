as yet unclassified
testsunencoding07
	"
    Text declarations (which optionally begin any external entity)
    are required to have  encoding=... . 
	 See XML Spec. 1.0 section: 4.3.1 [77]"

	(self class shouldSkipTests and: [testsToSkip includes: 'encoding07'])
		ifTrue:[^nil].

	self should: [self runTest:self class sourcesunnotwfencoding07xml ]
		raise: self exceptionSet2