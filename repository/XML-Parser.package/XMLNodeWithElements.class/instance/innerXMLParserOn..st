private
innerXMLParserOn: aStringOrStream
	^ (self configuration parserClass on: aStringOrStream withRootNode: self)
		configuration: self configuration.