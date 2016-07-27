tests
testclarknotwfsa088
	"
    Attribute values are terminated by literal quote characters,
    and any entity expansion is done afterwards. 
	 See XML Spec. 1.0 section: 2.3 [10]"

	(self class shouldSkipTests and: [testsToSkip includes: 'not-wf-sa-088'])
		ifTrue:[^nil].

	self should: [self runTest: self sourcexmltestnotwfsa088xml ]
		raise: self exceptionSet2