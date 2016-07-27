tests
testElementBadName
	XMLStringMethodsTest badNames do: [:each |
		self
			should: [SAXHandler parse: '<', each, '/>']
			raise: XMLWellFormednessException].