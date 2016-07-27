accessing
localPart
	^ localPart ifNil: [localPart := self qualified qualifiedNameLocalPart]