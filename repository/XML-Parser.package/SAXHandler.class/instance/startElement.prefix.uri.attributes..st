content
startElement: localName prefix: prefix uri: namespaceUri attributes: attributes
	"This call corresonds to the Java SAX call
	startElement(java.lang.String namespaceURI, java.lang.String localName, java.lang.String qName, Attributes atts).
	By default this call is mapped to the following more convenient call:"

	self
		forwardToDeprecatedHandler: #startElement:namespaceURI:namespace:attributeList:
		withArgumentOrder: #(1 3 2 4)
		orTo: #startElement:attributes: