tests
testElementBadNames
	XMLTokenizerTest badNames do: [:each |
		self
			should: [SAXHandler parse: '<', each, '/>']
			raise: XMLWellFormednessException.
		self
			should: [SAXHandler parse: '<test ', each, '="value"/>']
			raise: XMLWellFormednessException]