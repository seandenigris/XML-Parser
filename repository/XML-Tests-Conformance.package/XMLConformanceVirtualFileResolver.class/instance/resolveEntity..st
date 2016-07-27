resolving
resolveEntity: aUri
	^ (XMLConformanceVirtualFileHandle path: aUri asXMLURI path) getFromClass: virtualFileClass