resolving
resolveEntityURI: aUri
	^ (XMLConformanceVirtualFileHandle path: aUri asXMLURI unescapedPath)
		getFromClass: virtualFileClass