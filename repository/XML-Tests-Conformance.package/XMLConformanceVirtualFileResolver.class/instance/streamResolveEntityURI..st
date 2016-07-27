resolving
streamResolveEntityURI: aURIOrURIString
	^ self resolveEntityWith: [:maxSize |
		(XMLConformanceVirtualFileHandle
			virtualPath: aURIOrURIString asXMLURI path
			sourceClass: virtualFileClass) streamGet]