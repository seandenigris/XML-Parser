tests
testIsXMLNSAttributeName
	self
		deny: '' isXMLNSAttributeName;
		deny: 'name' isXMLNSAttributeName;
		deny: 'xml:base' isXMLNSAttributeName;
		deny: 'xml:space' isXMLNSAttributeName;
		assert: 'xmlns' isXMLNSAttributeName;
		assert: 'xmlns:' isXMLNSAttributeName;
		assert: 'xmlns:name' isXMLNSAttributeName