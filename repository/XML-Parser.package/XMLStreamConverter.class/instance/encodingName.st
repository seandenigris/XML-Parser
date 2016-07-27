accessing
encodingName
	^ encodingName ifNil: [encodingName := self defaultEncodingName]