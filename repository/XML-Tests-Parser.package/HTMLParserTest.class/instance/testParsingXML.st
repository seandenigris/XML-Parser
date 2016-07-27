tests
testParsingXML
	self
		shouldnt: [
			HTMLHandler
				parse: XMLParserTest addressBookXML;
				parse: XMLParserTest addressBookXMLWithDTD;
				parse: XMLDOMParserTest addressBookNamespacedXML;
				parse: XMLDOMParserTest addressBookNamespacePrefixedXML]
		raise: XMLParserException