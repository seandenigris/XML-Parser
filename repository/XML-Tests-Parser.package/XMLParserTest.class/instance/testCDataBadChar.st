tests
testCDataBadChar
	XMLCharacterMethodsTest nonChars do: [:each |
		self
			should: [SAXHandler parse: '<test><![CDATA[', each asString, ']]>']
			raise: XMLWellFormednessException]