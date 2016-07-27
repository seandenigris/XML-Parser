tests
testEncodingDeclarationUTF16LE
	self
		should: [
			SAXHandler parse:
				(self convertableStreamOn:
					(self
						sourceXMLWithEncoding: 'UTF-16LE'
						andASCIIContentAsUTF16BE: self sourceXML))]
		raise: XMLParserException.
	self
		shouldnt: [
			SAXHandler parse:
				(self convertableStreamOn:
					(self
						sourceXMLWithEncoding: 'UTF-16BE'
						andASCIIContentAsUTF16BE: self sourceXML))]
		raise: XMLParserException.