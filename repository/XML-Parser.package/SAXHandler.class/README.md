This class is an XML parser that uses event handling. Subclass it and override handlers under "handling - content" and "handling - lexical" as needed. By default, namespace support and validation are enabled but not external entity resolution.

To instantiate a subclass, send any of the "instance creation" or "parsing" messages. The "parsing" messages take some input and parse it immediately, returning the result:
	SAXHandlerSubclass parse: xml.
	SAXHandlerSubclass parseURL: url.
	SAXHandlerSubclass parse: xml usingNamespaces: false

The "instance creation" messages create new parsers on the input and return it so it can be configured before being sent #parseDocument to parse the input:
	(SAXHandlerSubclass on: xml)
		isValidating: true;
		resolvesExternalEntities: true;
		parseDocument.

#interruptParsing can be sent from within a handler to stop parsing, and there is also #parseDocumentWhile: and #parseDocumentUntil: 
	(SAXHandlerSubclass on: xml)
		parseDocumentWhile: [self shouldKeepParsing].

To parse incrementally, send #parser to an instance to get the underlying XMLParser object and send it #parseToken repeatedly:
	(handler := SAXHandlerSubclass on: xml)
		isValidating: false; 
		preservesUndeclaredEntityReferences: true.
	parser := handler parser.

	"Only parse the first 10 tokens:"
	10 timesRepeat: [parser parseToken].

There are security limits on input you can remove with #removeLimits or change with messages like #documentReadLimit:
	(SAXHandlerSubclass on: xml)
		removeLimits;
		documentReadLimit: newReadLimit;
		maxEntityReplacementDepth: newMaxEntityDepth;
		parseDocument.
		
#optimizeForLargeDocuments  should be used when parsing large documents if you don't care for validating or namespaces.