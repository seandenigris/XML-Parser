This class is an XML parser that uses event handling. The acronym "SAX" refers to Java's "Simple API for XML," on which SAXHandler's API is based. To use this class, create a subclass and override handlers under the "content" and "lexical" categories as needed. By default, namespace support and validation are enabled (but not external entity resolution).

To instantiate a SAXHandler, send any of the #on: or #parse- messages to the class.

The class-side #parse- messages take some input source and parse it immediately, returning the result of #parseDocument:
	SAXHandlerSubclass parse: xml.
	SAXHandlerSubclass parseURL: aUrl. 
	SAXHandlerSubclass parse: xml usingNamespaces: false

The #on: messages create new parsers on the given input string, stream, URL, or file and return it; the instance can then be further configured and ultimately sent #parseDocument to parse the given input:
	(SAXHandlerSubclass on: xml)
		isValidating: false;
		resolvesExternalEntities: false;
		parseDocument.

There is also #parseDocumentWhile: to stop parsing before the end.
	(SAXHandlerSubclass on: xml)
		parseDocumentWhile: [self shouldKeepParsing].

To parse incrementally, send #parser to an instance to get the underlying XMLParser object and send it #parseToken repeatedly:
	(handler := SAXHandlerSubclass on: xml)
		isValidating: false; 
		preservesUndeclaredEntityReferences: true.
	parser := handler parser.

	"Only parse the first 10 tokens:"
	10 timesRepeat: [parser parseToken].