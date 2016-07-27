tests
testDecodingDisabledEncodingDetection
	| xml |

	xml := self toUTF16: self sourceXML littleEndian: true.
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