resolving
resolveEntityURI: aUri
	^ (XMLConformanceVirtualFileHandle
		virtualPath: aUri asXMLURI unescapedPath
		sourceClass: virtualFileClass) get