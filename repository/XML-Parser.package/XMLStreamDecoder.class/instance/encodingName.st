accessing
encodingName
	^ encodingName
		ifNil: [encodingName := self class encodingName anyOne]