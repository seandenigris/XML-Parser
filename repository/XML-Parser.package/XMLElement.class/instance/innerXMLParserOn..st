private
innerXMLParserOn: aStringOrStream
	^ (super innerXMLParserOn: aStringOrStream)
		currentScope: self namespaceScope