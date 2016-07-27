tests
testEncodingDeclarationUTF32BE
	self
		should: [
			SAXHandler parse:
				(self convertableStreamOn:
					(self
						sourceXMLWithEncoding: 'utf-32be'
						andASCIIContentAsUTF32LE: self sourceXML))]
		raise: XMLParserException.
	self
		shouldnt: [
			SAXHandler parse:
				(self convertableStreamOn:
					(self
						sourceXMLWithEncoding: 'utf-32be'
						andASCIIContentAsUTF32BE: self sourceXML))]
		raise: XMLParserException.