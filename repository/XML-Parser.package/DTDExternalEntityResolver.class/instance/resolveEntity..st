resolving
resolveEntity: aUri
	^ (self clientForURI: aUri) get: aUri