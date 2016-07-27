content
endElement: localName qualifiedName: qualifiedName prefix: prefix uri: namespaceURI
	"This call corresponds to the Java SAX call
	endElement(java.lang.String namespaceURI, java.lang.String localName, java.lang.String qName).
	By default this call is mapped to the following more convenient call:"

	self
		forwardToDeprecatedHandler: #endElement:namespace:namespaceURI:qualifiedName:
		withArgumentOrder: #(1 3 4 2)
		orTo: #endElement:prefix:uri: