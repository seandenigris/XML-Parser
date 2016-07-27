accessing
expandedName
	"Returns a string containing the local name expanded with its namespace URI"
	^ self namespaceURI
		ifNil: [self localName]
		ifNotNil: ['{', self namespaceURI, '}', self localName]