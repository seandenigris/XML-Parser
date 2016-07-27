tests
testclarkvalidsa094
	"
    
    This refers to an undefined parameter entity reference within
    a markup declaration in the internal DTD subset, violating
    the PEs in Internal Subset WFC.
	 See XML Spec. 1.0 section: 2.8"

	(self class shouldSkipTests and: [testsToSkip includes: 'valid-sa-094'])
		ifTrue:[^nil].

	self should: [self runTest:self   class sourcexmltestvalidsa094xml ]
		raise: self exceptionSet2