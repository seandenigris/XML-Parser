resolving
streamResolveEntityURI: anXMLURIOrURIString
	| uri |

	(uri := anXMLURIOrURIString asXMLURI) isLocalURI
		ifTrue: [^ super streamResolveEntityURI: uri]
		ifFalse: [
			"non-local entities are cached"
			^ self cachingStreamResolveEntityURI: uri]