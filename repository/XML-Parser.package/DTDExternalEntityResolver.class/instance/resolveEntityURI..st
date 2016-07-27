resolving
resolveEntityURI: aURIOrURIString
	^ self resolveEntityWith: [:maxSize |
		aURIOrURIString asXMLURI getUpToLimit: maxSize]