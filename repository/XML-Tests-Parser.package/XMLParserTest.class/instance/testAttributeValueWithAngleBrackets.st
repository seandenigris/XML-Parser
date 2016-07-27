tests
testAttributeValueWithAngleBrackets
	self
		should: [SAXHandler parse: '<test name="<value/>"/>']
		raise: XMLWellFormednessException.
	self
		shouldnt: [SAXHandler parse: '<test name="&lt;value/>"/>']
		raise: XMLWellFormednessException.