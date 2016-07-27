tests
testEntityDeclarationBadName
	XMLStringMethodsTest badNames do: [:each |
		self
			should: [
				SAXHandler parse:
					'<!DOCTYPE test [
						<!ENTITY ', each, ' "value">
					]><test/>']
			raise: XMLWellFormednessException]