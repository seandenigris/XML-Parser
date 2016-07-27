as yet unclassified
testsuninvdtd06
	"
    Tests  Entity Declared  VC for a parameter entity.  NOTE:  there
    are both VCs and WFCs with this name, which is a specification issue
    in that it is both confusing and in some ways self-contradictory.
    The WFC does not apply to PEs, and even the clause which might
    seem to suggest it could is ruled out in this test.
	 See XML Spec. 1.0 section: 4.1"

	(self class shouldSkipTests and: [testsToSkip includes: 'inv-dtd06'])
		ifTrue:[^nil].

	self should: [self runTest:self class sourcesuninvaliddtd06xml]
		raise: self exceptionSet