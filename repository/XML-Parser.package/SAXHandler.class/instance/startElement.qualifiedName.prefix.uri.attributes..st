content
startElement: localName qualifiedName: qualifiedName prefix: prefix uri: namespaceUri attributes: attributes
	"This call corresonds to the Java SAX call
	startElement(java.lang.String namespaceURI, java.lang.String localName, java.lang.String qName, Attributes atts).
	By default this call is mapped to the following more convenient call:"

	self
		startElement: localName
		prefix: prefix
		uri: namespaceUri
		attributes: attributes