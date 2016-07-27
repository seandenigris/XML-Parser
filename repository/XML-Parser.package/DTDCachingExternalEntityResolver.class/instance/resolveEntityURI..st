resolving
resolveEntityURI: anXMLURIOrURIString
	| uri |

	(uri := anXMLURIOrURIString asXMLURI) isLocalURI
		ifTrue: [^ super resolveEntityURI: uri]
		ifFalse: [
			"non-local entities are cached"
			^ self cachingResolveEntityURI: uri]