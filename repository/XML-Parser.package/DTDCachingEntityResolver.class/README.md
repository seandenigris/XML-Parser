This resolver can cache entities so they don't have to be retrieved again (like over HTTP). Use it like this:
	entityResolver := DTDCachingEntityResolver new.
	(XMLDOMParser on: xml)
		externalEntityResolver: entityResolver;
		parseDocument.