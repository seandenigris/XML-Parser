accessing
entityAtURI: anXMLURIOrURIString put: aReplacement
	^ self entities
		at: anXMLURIOrURIString asXMLURI
		put: aReplacement