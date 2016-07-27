tests
testEncodingDeclarationUTF32LE
	self
		should: [
			SAXHandler parse:
				(self convertableStreamOn:
					(self
						sourceXMLWithEncoding: 'utf-32-le'
						andASCIIContentAsUTF32BE: self sourceXML))]
		raise: XMLParserException.
	self
		shouldnt: [
			SAXHandler parse:
				(self convertableStreamOn:
					(self
						sourceXMLWithEncoding: 'utf-32-le'
						andASCIIContentAsUTF32LE: self sourceXML))]
		raise: XMLParserException.