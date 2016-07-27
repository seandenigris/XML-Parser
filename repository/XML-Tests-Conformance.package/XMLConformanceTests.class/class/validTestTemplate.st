as yet unclassified
validTestTemplate
	"Template used to create the test methods for valid tests
	<1s> = test name
	 <2s> = test ID
	 <3s> = description
	 <4s> = XML spec reference
	 <5s> = test path
	 <6s> = answer file path" 
	^'test<1s>
	"<3s>
	 See XML Spec. 1.0 section: <4s>"
	|  correctAnswer  result |

	(self class shouldSkipTests and: [testsToSkip includes: ''<2s>''])
		ifTrue:[^nil].
	correctAnswer := (self class filenameAt:''<6s>'')  contentsOfEntireFile.

	[result := self runTest: ''<5s>'' ]
		on: VWXMLWarningSignal
		do: [:warn | warn resume].

	self assert: correctAnswer = result.'


"	correctAnswer := ((self class filenameAt:''<6s>'') withEncoding: #UTF_8 ) readStream contents."