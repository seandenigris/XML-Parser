handling - content
endElement: aQualifiedName prefix: aPrefix uri: aURI localName: aLocalName
	self messageRecorder
		recordMessageReceiver: self
		selector: #endElement:prefix:uri:localName:
		arguments:
			(Array
				with: aQualifiedName
				with: aPrefix
				with: aURI
				with: aLocalName)