private
innerXMLParserOn: aStringOrStream
	^ self configuration parserHandlerClass
		on: aStringOrStream
		withRootNode: self