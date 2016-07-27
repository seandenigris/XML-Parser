tests
testclarknotwfsa018
	"
    CDATA sections begin with a literal '<![CDATA[', no space.
	 See XML Spec. 1.0 section: 2.7 [19]"

	(self class shouldSkipTests and: [testsToSkip includes: 'not-wf-sa-018'])
		ifTrue:[^nil].

	self should: [self runTest: self sourcexmltestnotwfsa018xml ]
		raise: self exceptionSet2