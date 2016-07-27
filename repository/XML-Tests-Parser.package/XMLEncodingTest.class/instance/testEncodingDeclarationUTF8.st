tests
testEncodingDeclarationUTF8
	self
		should: [
			SAXHandler parse:
				(self convertableStreamOn:
					(self
						sourceXMLWithEncoding: 'UTF8'
						andASCIIContentAsUTF16BE: self sourceXML))]
		raise: XMLParserException.
	self
		should: [
			SAXHandler parse:
				(self convertableStreamOn:
					(self
						sourceXMLWithEncoding: 'UTF-8'
						andASCIIContentAsUTF16LE: self sourceXML))]
		raise: XMLParserException.
	self
		shouldnt: [
			SAXHandler parse:
				(self convertableStreamOn: (self encodingDeclaration: 'UTF-8'), self sourceXML)]
		raise: XMLParserException.