tests
testPCDataBadChar
	XMLCharacterMethodsTest nonChars do: [:each |
		self
			should: [SAXHandler parse: '<test>', each asString, '</test>']
			raise: XMLWellFormednessException]