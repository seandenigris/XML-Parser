resolving
streamResolveEntityURI: anXMLURIOrURIString
	| uri |

	(uri := anXMLURIOrURIString asXMLURI) isLocalURI
		ifTrue: [^ super streamResolveEntityURI: uri]
		ifFalse: [^ self cachingStreamResolveEntityURI: uri]