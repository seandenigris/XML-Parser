resolving
resolveEntity: aUri
	| uri |

	^ (uri := aUri asXMLURI) isLocalURI
		ifTrue: [super resolveEntity: uri]
		ifFalse: [
			ReadStream on:
				(self class
					entityCacheAt: uri
					ifAbsentPut: [(super resolveEntity: uri) contents])]