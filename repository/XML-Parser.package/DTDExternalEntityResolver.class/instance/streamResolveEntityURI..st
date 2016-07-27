resolving
streamResolveEntityURI: aURIOrURIString
	^ self resolveEntityWith: [:maxSize |
		aURIOrURIString asXMLURI streamGetUpToLimit: maxSize]