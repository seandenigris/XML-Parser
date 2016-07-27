tests
testDecodingDisabledEncodingDeclaration
	| xml |

	xml := 
		self
			encodingDeclaration: 'UTF-16-BE'
			withUTF16XML: self sourceXML
			littleEndian: false.
	self
		should: [
			(SAXHandler on: (self convertableStreamOn: xml))
				decodesCharacters: false;
				parseDocument]
		raise: XMLParserException.
	self
		shouldnt: [
			(SAXHandler on: (self convertableStreamOn: xml))
				decodesCharacters: true;
				parseDocument]
		raise: XMLParserException.