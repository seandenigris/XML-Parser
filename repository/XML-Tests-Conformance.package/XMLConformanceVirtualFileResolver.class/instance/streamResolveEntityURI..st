resolving
streamResolveEntityURI: anXMLURIOrURIString
	^ self resolveEntityWith: [:maxSize |
		(XMLConformanceVirtualFileHandle
			virtualPath: anXMLURIOrURIString asXMLURI path
			sourceClass: virtualFileClass) streamGet]