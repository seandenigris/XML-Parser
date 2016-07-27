testing
isWritingBody
	^ isWritingBody ifNil: [isWritingBody := false]