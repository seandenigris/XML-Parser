tests
testDecodingDisabledEncodingDeclaration
	| xml |

	xml := 
		self
			sourceXMLWithEncoding: 'UTF-16-BE'
			andASCIIContentAsUTF16BE: self sourceXML.
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