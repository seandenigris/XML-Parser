handling - content
startElement: aQualifiedName prefix: aPrefix uri: aURI localName: aLocalName attributes: aDictionary
	self messageRecorder
		recordMessageReceiver: self
		selector: #startElement:prefix:uri:localName:attributes:
		arguments:
			(OrderedCollection new
				add: aQualifiedName;
				add: aPrefix;
				add: aURI;
				add: aLocalName;
				add: aDictionary;
				asArray)