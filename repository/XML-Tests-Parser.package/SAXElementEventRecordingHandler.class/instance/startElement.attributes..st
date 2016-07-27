handling - content
startElement: aQualifiedName attributes: aDictionary
	self messageRecorder
		recordMessageReceiver: self
		selector: #startElement:attributes:
		arguments: (Array with: aQualifiedName with: aDictionary)