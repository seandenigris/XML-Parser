resolving
resolveEntityURI: anXMLURIOrURIString
	| uri |

	(uri := anXMLURIOrURIString asXMLURI) isLocalURI
		ifTrue: [^ super resolveEntityURI: uri]
		ifFalse: [^ self cachingResolveEntityURI: uri]