tests
testEncodingDeclarationUTF16LE
	self
		should: [
			SAXHandler parse:
				(self convertableStreamOn:
					(self
						encodingDeclaration: 'UTF-16LE'
						withUTF16XML: self sourceXML
						littleEndian: false))]
		raise: XMLParserException.
	self
		shouldnt: [
			SAXHandler parse:
				(self convertableStreamOn:
					(self
						encodingDeclaration: 'UTF-16LE'
						withUTF16XML: self sourceXML
						littleEndian: true))]
		raise: XMLParserException.