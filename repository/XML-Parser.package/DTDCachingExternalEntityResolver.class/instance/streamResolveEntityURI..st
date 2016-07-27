resolving
streamResolveEntityURI: aURIOrURIString
	| uri |

	(uri := aURIOrURIString asXMLURI) isLocalURI
		ifTrue: [^ super streamResolveEntityURI: uri]
		ifFalse: [^ self cachingStreamResolveEntityURI: uri]