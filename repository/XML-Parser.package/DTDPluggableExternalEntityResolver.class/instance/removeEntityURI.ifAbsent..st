removing
removeEntityURI: anXMLURIOrURIString ifAbsent: aBlock
	^ self entities
		removeKey: anXMLURIOrURIString asXMLURI
		ifAbsent: aBlock