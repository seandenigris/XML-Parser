as yet unclassified
invalidTestTemplate
	"<1s> = test name
	 <2s> = test ID
	 <3s> = description
	 <4s> = XML spec reference
	 <5s> = test path"
	^'test<1s>
	"<3s>
	 See XML Spec. 1.0 section: <4s>"

	(self class shouldSkipTests and: [testsToSkip includes: ''<2s>''])
		ifTrue:[^nil].

	self assert: [self runTest: ''<5s>'']
		raises: self exceptionSet'