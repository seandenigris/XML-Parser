tests
testEncodingDeclarationUTF32BE
	self
		should: [
			SAXHandler parse:
				(self convertableStreamOn:
					(self
						encodingDeclaration: 'utf-32be'
						withUTF32XML: self sourceXML
						littleEndian: true))]
		raise: XMLParserException.
	self
		shouldnt: [
			SAXHandler parse:
				(self convertableStreamOn:
					(self
						encodingDeclaration: 'utf-32be'
						withUTF32XML: self sourceXML
						littleEndian: false))]
		raise: XMLParserException.