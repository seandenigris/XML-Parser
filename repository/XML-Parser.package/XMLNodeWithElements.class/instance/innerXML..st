parsing
innerXML: aStringOrStream
	"can be used to dynamically set the inner XML from a string that will
	be parsed"

	self innerXMLParsedWith: (self parserHandlerClass on: aStringOrStream)