accessing
entityAtURI: anXMLURIOrURIString
	^ self
		entityAtURI: anXMLURIOrURIString asXMLURI
		ifAbsent: ['']