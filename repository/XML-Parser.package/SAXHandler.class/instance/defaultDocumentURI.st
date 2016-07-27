private
defaultDocumentURI
	^ (input respondsTo: #path)
		ifTrue: [input path]
		ifFalse: [self externalEntityResolver defaultDocumentURI].