tests
testEncodingDeclarationUTF16BE
	self
		should: [
			SAXHandler parse:
				(self convertableStreamOn:
					(self
						encodingDeclaration: 'UTF-16-BE'
						withUTF16XML: self sourceXML
						littleEndian: true))]
		raise: XMLParserException.
	self
		shouldnt: [
			SAXHandler parse:
				(self convertableStreamOn:
					(self
						encodingDeclaration: 'UTF-16-BE'
						withUTF16XML: self sourceXML
						littleEndian: false))]
		raise: XMLParserException.