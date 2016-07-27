tests
testSystemIDBadChar
	XMLCharacterMethodsTest nonChars do: [:each |
		self
			should: [
				SAXHandler parse:
					'<!DOCTYPE test SYSTEM "', each asString, '"><test/>']
			raise: XMLWellFormednessException]