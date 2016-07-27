testing
isNamed: aName
	^ aName
		isXMLQualifiedName: self name
		orLocalName: self localName