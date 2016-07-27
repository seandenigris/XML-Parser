tests
testclarknotwfsa160
	"
    Violates the PEs in Internal Subset WFC
    by using a PE reference within a declaration. 
	 See XML Spec. 1.0 section: 2.8"

	(self class shouldSkipTests and: [testsToSkip includes: 'not-wf-sa-160'])
		ifTrue:[^nil].

	self should: [self runTest:self sourcexmltestnotwfsa160xml ]
		raise: self exceptionSet2