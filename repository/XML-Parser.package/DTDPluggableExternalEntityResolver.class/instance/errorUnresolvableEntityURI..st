private
errorUnresolvableEntityURI: anXMLURIOrURIString
	XMLParserException
		formatSignal: 'Unresolvable entity: {1}'
		with: anXMLURIOrURIString asString