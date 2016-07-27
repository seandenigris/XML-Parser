as yet unclassified
testsunpe01
	"
    Parameter entities must consist of a series of complete markup
    declarations of the types allowed by the nonterminal
    markupdecl, interespersed with whitespace or PERefs.
	 See XML Spec. 1.0 section: 2.8"

	(self class shouldSkipTests and: [testsToSkip includes: 'pe01'])
		ifTrue:[^nil].

	self should: [self runTest:self class sourcesuninvalidpe01xml]
		raise: self exceptionSet