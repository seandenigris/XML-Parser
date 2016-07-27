private
errorCodeNotInTable: aCharacterCode
	self error: 'Character code ', aCharacterCode asString, ' not in table'