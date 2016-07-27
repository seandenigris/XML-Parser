tests
testclarknotwfsa092
	"
    The replacement text of this entity has an illegal reference,
    because the character reference is expanded immediately. 
	 See XML Spec. 1.0 section: 4.5"

	(self class shouldSkipTests and: [testsToSkip includes: 'not-wf-sa-092'])
		ifTrue:[^nil].

	self should: [self runTest:self sourcexmltestnotwfsa092xml ]
		raise: self exceptionSet2