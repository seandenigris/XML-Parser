tests
testclarknotwfnotsa002
	"
    Processing instruction target names may not be  XML  
    in any combination of cases. 
	 See XML Spec. 1.0 section: 2.6 [17]"

	(self class shouldSkipTests and: [testsToSkip includes: 'not-wf-not-sa-002'])
		ifTrue:[^nil].

	self should: [self runTest: self sourcexmltestnotwfnotsa002xml ]
		raise: self exceptionSet2