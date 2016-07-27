as yet unclassified
testsunsgml01
	"
    SGML-ism: omitted end tag for EMPTY content
	 See XML Spec. 1.0 section: 3 [39]"

	(self class shouldSkipTests and: [testsToSkip includes: 'sgml01'])
		ifTrue:[^nil].

	self should: [self runTest:self class sourcesunnotwfsgml01xml ]
		raise: self exceptionSet2