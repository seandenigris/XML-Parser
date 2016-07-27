resolving
streamResolveEntityURI: anXMLURIOrURIString
	^ self resolveEntityWith: [:maxSize |
		anXMLURIOrURIString asXMLURI
			streamGetUpToLimit: maxSize
			decoding: false]