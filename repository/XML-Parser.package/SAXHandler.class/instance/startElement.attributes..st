content
startElement: aQualifiedName attributes: aDictionary
	self
		invokeDeprecated: #startElement:attributeList:
		withArguments: (Array with: aQualifiedName with: aDictionary)
		orForwardTo: nil
		withArguments: nil.