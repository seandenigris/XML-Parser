accessing
documentURI
	^ documentUri ifNil: [documentUri := self defaultDocumentURI]