testing
isNamedAny: aNameCollection
	^ aNameCollection
		includesXMLQualifiedName: self name
		orLocalName: self localName