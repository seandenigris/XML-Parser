tests
testAttributeValueBadChar
	XMLCharacterMethodsTest nonChars do: [:each |
		self
			should: [SAXHandler parse: '<test name="', each asString, '"/>']
			raise: XMLWellFormednessException]