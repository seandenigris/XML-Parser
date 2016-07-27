content
startElement: aQualifiedName prefix: aPrefix uri: aUri localName: aLocalName attributes: aDictionary
	"This call corresonds to the Java SAX call
	startElement(java.lang.String namespaceURI, java.lang.String localName,
		java.lang.String qName, Attributes atts)."

	self
		invokeDeprecated: #startElement:namespaceURI:namespace:attributeList:
		withArguments: (Array with: aLocalName with: aUri with: aPrefix with: aDictionary)
		orForwardTo: #startElement:prefix:uri:attributes:
		withArguments: (Array with: aQualifiedName with: aUri with: aPrefix with: aDictionary).