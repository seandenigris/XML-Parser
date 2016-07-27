resolving
streamResolveEntityURI: aURIOrURIString
	^ self resolveEntityWith: [:maxSize |
		(XMLConformanceVirtualFileHandle
			virtualPath: aURIOrURIString asXMLURI unescapedPath
			sourceClass: virtualFileClass) streamGet]