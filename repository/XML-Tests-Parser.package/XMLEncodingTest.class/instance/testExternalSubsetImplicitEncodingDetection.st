tests
testExternalSubsetImplicitEncodingDetection
	| xml uri |

	xml := '<!ELEMENT name EMPTY>'.
	uri := '/external.xml'.
	self
		shouldnt: [
			((SAXHandler on: '') parser driver
				externalSubsetParserOn:
					(self convertableStreamOn: (self asciiToUTF16LE: xml))
				documentURI: uri) parseDocument]
		raise: XMLParserException.
	self
		shouldnt: [
			((SAXHandler on: '') parser driver
				externalSubsetParserOn:
					(self convertableStreamOn: (self asciiToUTF16BE: xml))
				documentURI: uri) parseDocument]
		raise: XMLParserException.