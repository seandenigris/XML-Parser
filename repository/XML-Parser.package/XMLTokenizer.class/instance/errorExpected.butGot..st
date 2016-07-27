errors
errorExpected: anExpectedCharacterOrString butGot: aReceivedCharacterOrString
	| expectedString receivedString |

	expectedString := anExpectedCharacterOrString asString.	
	(receivedString := (aReceivedCharacterOrString ifNil: ['']) asString)
			ifEmpty: [receivedString := 'nothing'].

	self errorExpected: expectedString, ' but got ', receivedString.