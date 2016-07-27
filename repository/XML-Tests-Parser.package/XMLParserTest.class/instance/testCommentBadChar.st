tests
testCommentBadChar
	XMLCharacterMethodsTest nonChars do: [:each |
		self
			should: [SAXHandler parse: '<!--', each asString, '-->']
			raise: XMLWellFormednessException]