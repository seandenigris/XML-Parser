tests
testEncodingDeclarationUTF16BE
	self
		should: [
			SAXHandler parse:
				(self convertableStreamOn:
					(self
						sourceXMLWithEncoding: 'UTF-16-BE'
						andASCIIContentAsUTF16LE: self sourceXML))]
		raise: XMLParserException.
	self
		shouldnt: [
			SAXHandler parse:
				(self convertableStreamOn:
					(self
						sourceXMLWithEncoding: 'UTF-16-BE'
						andASCIIContentAsUTF16BE: self sourceXML))]
		raise: XMLParserException.