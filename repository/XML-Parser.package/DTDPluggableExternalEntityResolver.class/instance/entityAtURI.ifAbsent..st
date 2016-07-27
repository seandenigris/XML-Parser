accessing
entityAtURI: anXMLURIOrURIString ifAbsent: aBlock
	^ self entities
		at: anXMLURIOrURIString asXMLURI
		ifAbsent: aBlock