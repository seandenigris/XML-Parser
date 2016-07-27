tests
testclarknotwfsa008
	"
    Entity references must include names, which don't begin
    with '.' (it's not a Letter or other name start character). 
	 See XML Spec. 1.0 section: 2.3 [5]"

	(self class shouldSkipTests and: [testsToSkip includes: 'not-wf-sa-008'])
		ifTrue:[^nil].

	self should: [self runTest: self sourcexmltestnotwfsa008xml ]
		raise: self exceptionSet2