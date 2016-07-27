accessing
entityAtURI: anXMLURIOrURIString ifAbsentPut: aBlock
	^ self entities
		at: anXMLURIOrURIString asXMLURI
		ifAbsentPut: aBlock