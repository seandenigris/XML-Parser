as yet unclassified
testsunroot
	"
    Tests the Root Element Type VC
	 See XML Spec. 1.0 section: 2.8"

	(self class shouldSkipTests and: [testsToSkip includes: 'root'])
		ifTrue:[^nil].

	self should: [self runTest:self class sourcesuninvalidrootxml]
		raise: self exceptionSet