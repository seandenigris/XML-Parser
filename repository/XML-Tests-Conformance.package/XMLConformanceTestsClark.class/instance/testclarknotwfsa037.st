tests
testclarknotwfsa037
	"
    Character references may not appear after the root element. 
	 See XML Spec. 1.0 section: 2.8 [27]"

	(self class shouldSkipTests and: [testsToSkip includes: 'not-wf-sa-037'])
		ifTrue:[^nil].

	self should: [self runTest: self sourcexmltestnotwfsa037xml ]
		raise: self exceptionSet2