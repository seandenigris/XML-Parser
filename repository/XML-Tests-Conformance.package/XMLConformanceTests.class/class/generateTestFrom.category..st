as yet unclassified
generateTestFrom: anVWXMLElement category: aString
	|type testName testFile reference description testCode answerFile arguments |

	type := anVWXMLElement valueOfAttribute: 'TYPE' ifAbsent: [self error: 'missing test information'].
	testName := anVWXMLElement valueOfAttribute: 'ID' ifAbsent: [self error: 'missing test information'].
	testFile := anVWXMLElement valueOfAttribute: 'URI' ifAbsent: [self error: 'missing test information'].
	reference := anVWXMLElement valueOfAttribute: 'SECTIONS' ifAbsent: [self error: 'missing test information'].
	answerFile := anVWXMLElement valueOfAttribute: 'OUTPUT' ifAbsent: [nil].
	"Some test do not give correct answer. skip"
	type = 'valid' & (answerFile isNil)
		ifTrue:[^self]. 
	description := anVWXMLElement characterData.

	"sun test files do not follow the same pattern as the others"
	aString = 'sun' ifTrue:
		[testFile := 'sun/' , testFile.
		 answerFile notNil ifTrue:[ answerFile := 'sun/' , answerFile.]].

	arguments := OrderedCollection new: 5.
	arguments
		add: aString ,  (self remove: $- from: testName );
		add: testName;
		add: (description replaceAll: $" with: $ );
		add: (reference replaceAll: $" with: $ );
		add: testFile;
		add: answerFile.
	testCode := (type = 'valid') 
					ifTrue:[self validTestTemplate]
					ifFalse:[ (type = 'not-wf')
						ifTrue:[self notWellFormedTestTemplate]
						ifFalse:[ (type = 'invalid' or:[type = 'error'])
							ifTrue:[self invalidTestTemplate]
							ifFalse:[self error: 'Invalid test type']]].
	testCode := testCode expandMacrosWithArguments: arguments.
	self addMethod: testCode classified: aString , ' ' , (type replaceAll: $- with: $ ).