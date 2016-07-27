tests
testExternalSubsetImplicitEncodingDetection
	| xml uri |

	xml := '<!ELEMENT name EMPTY>'.
	uri := '/external.xml'.
	self
		shouldnt: [
			((SAXHandler on: '') parser driver
				externalSubsetParserOn:
					(self convertableStreamOn: (self toUTF16: xml littleEndian: true))
				documentURI: uri) parseDocument]
		raise: XMLParserException.
	self
		shouldnt: [
			((SAXHandler on: '') parser driver
				externalSubsetParserOn:
					(self convertableStreamOn: (self toUTF16: xml littleEndian: false))
				documentURI: uri) parseDocument]
		raise: XMLParserException.