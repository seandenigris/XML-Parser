tests
testclarknotwfsa170
	"
    Four byte UTF-8 encodings can encode UCS-4 characters
    which are beyond the range of legal XML characters
    (and can't be expressed in Unicode surrogate pairs).
    This document holds such a character.  
	 See XML Spec. 1.0 section: 2.2 [2]"

	(self class shouldSkipTests and: [testsToSkip includes: 'not-wf-sa-170'])
		ifTrue:[^nil].

	self should: [self runTest:self sourcexmltestnotwfsa170xml ]
		raise: self exceptionSet2