resolving
resolveEntityURI: aURIOrURIString
	| uri |

	(uri := aURIOrURIString asXMLURI) isLocalURI
		ifTrue: [^ super resolveEntityURI: uri]
		ifFalse: [^ self cachingResolveEntityURI: uri]