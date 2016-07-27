tests
testEncodingDeclarationUTF32LE
	self
		should: [
			SAXHandler parse:
				(self convertableStreamOn:
					(self
						encodingDeclaration: 'utf-32-le'
						withUTF32XML: self sourceXML
						littleEndian: false))]
		raise: XMLParserException.
	self
		shouldnt: [
			SAXHandler parse:
				(self convertableStreamOn:
					(self
						encodingDeclaration: 'utf-32-le'
						withUTF32XML: self sourceXML
						littleEndian: true))]
		raise: XMLParserException.