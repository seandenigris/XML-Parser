tests
testDecodingDisabledEncodingDetection
	| xml |

	xml := self asciiToUTF16LE: self sourceXML.
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