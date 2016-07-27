handling - content
endElement: aQualifiedName prefix: aPrefix uri: aURI
	self messageRecorder
		recordMessageReceiver: self
		selector: #endElement:prefix:uri:
		arguments:
			(Array
				with: aQualifiedName
				with: aPrefix
				with: aURI)