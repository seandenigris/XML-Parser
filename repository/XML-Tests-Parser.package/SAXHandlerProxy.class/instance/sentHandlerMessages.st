accessing
sentHandlerMessages
	^ sentHandlerMessages ifNil: [sentHandlerMessages := OrderedCollection new]