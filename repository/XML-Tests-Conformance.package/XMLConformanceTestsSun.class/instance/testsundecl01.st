as yet unclassified
testsundecl01
	"
    External entities may not have standalone decls. 
	 See XML Spec. 1.0 section: 4.3.1 [77]"

	(self class shouldSkipTests and: [testsToSkip includes: 'decl01'])
		ifTrue:[^nil].

	self should: [self runTest:self class sourcesunnotwfdecl01xml ]
		raise: self exceptionSet2