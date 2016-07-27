tests
testAttributeBadName
	XMLStringMethodsTest badNames do: [:each |
		self
			should: [SAXHandler parse: '<test ', each, '="value"/>']
			raise: XMLWellFormednessException]