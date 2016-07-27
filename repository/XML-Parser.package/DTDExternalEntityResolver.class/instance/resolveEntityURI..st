resolving
resolveEntityURI: anXMLURIOrURIString
	^ self resolveEntityWith: [:maxSize |
		anXMLURIOrURIString asXMLURI
			getUpToLimit: maxSize
			decoding: false]