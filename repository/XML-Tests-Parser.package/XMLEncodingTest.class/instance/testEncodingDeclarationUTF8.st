tests
testEncodingDeclarationUTF8
	self
		should: [
			SAXHandler parse:
				(self convertableStreamOn:
					(self
						encodingDeclaration: 'UTF8'
						withUTF16XML: self sourceXML
						littleEndian: false))]
		raise: XMLParserException.
	self
		should: [
			SAXHandler parse:
				(self convertableStreamOn:
					(self
						encodingDeclaration: 'UTF-8'
						withUTF16XML: self sourceXML
						littleEndian: true))]
		raise: XMLParserException.
	self
		shouldnt: [
			SAXHandler parse:
				(self convertableStreamOn: (self encodingDeclaration: 'UTF-8'), self sourceXML)]
		raise: XMLParserException.