handling - content
startElement: aQualifiedName prefix: aPrefix uri: aURI attributes: aDictionary
	self messageRecorder
		recordMessageReceiver: self
		selector: #startElement:prefix:uri:attributes:
		arguments:
			(Array
				with: aQualifiedName
				with: aPrefix
				with: aURI
				with: aDictionary)