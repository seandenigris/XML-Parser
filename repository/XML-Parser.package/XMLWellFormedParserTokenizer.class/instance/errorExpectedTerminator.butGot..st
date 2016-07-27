errors
errorExpectedTerminator: aTerminatorCharacter butGot: aReceivedCharacer
	self
		errorExpected: '"', aTerminatorCharacter asString, '" terminator'
		butGot: aReceivedCharacer