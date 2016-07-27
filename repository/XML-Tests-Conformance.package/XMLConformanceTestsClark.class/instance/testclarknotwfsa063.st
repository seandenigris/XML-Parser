tests
testclarknotwfsa063
	"
    Conditional sections may only appear in the external
    DTD subset. 
	 See XML Spec. 1.0 section: 2.8 [29]"

	(self class shouldSkipTests and: [testsToSkip includes: 'not-wf-sa-063'])
		ifTrue:[^nil].

	self should: [self runTest: self sourcexmltestnotwfsa063xml ]
		raise: self exceptionSet2