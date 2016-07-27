resolving
resolveEntityURI: aUri
	| uri |

	^ (uri := aUri asXMLURI) isLocalURI
		ifTrue: [super resolveEntityURI: uri]
		ifFalse: [
			ReadStream on:
				(self class
					entityCacheAt: uri
					ifAbsentPut: [(super resolveEntityURI: uri) contents])]