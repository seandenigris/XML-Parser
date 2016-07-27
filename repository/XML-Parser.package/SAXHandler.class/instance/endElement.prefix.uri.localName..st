content
endElement: aQualifiedName prefix: aPrefix uri: aUri localName: aLocalName
	"This call corresponds to the Java SAX call
	endElement(java.lang.String namespaceURI, java.lang.String localName, java.lang.String qName).
	By default this call is mapped to the following more convenient call:"

	self
		invokeDeprecated: #endElement:namespace:namespaceURI:qualifiedName:
		withArguments: (Array with: aLocalName with: aPrefix with: aUri with: aQualifiedName)
		orForwardTo: #endElement:prefix:uri:
		withArguments: (Array with: aQualifiedName with: aPrefix with: aUri)