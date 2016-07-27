tests
testclarknotwfsa106
	"
    Invalid placement of entity declaration. 
	 See XML Spec. 1.0 section: 4.2"

	(self class shouldSkipTests and: [testsToSkip includes: 'not-wf-sa-106'])
		ifTrue:[^nil].

	self should: [self runTest:self sourcexmltestnotwfsa106xml ]
		raise: self exceptionSet2