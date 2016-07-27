tests
testExternalSubsetByteOrderMarkDetection
	| xml uri |

	xml := '<!ELEMENT name EMPTY>'.
	uri := '/external.xml'.
	self
		shouldnt: [
			((SAXHandler on: '') parser driver
				externalSubsetParserOn:
					(self convertableStreamOn:
						self utf16LittleEndianBOM, (self toUTF16: xml littleEndian: true))
				documentURI: uri) parseDocument]
		raise: XMLParserException.
	self
		shouldnt: [
			((SAXHandler on: '') parser driver
				externalSubsetParserOn:
					(self convertableStreamOn:
						self utf16BigEndianBOM, (self toUTF16: xml littleEndian: false))
				documentURI: uri) parseDocument]
		raise: XMLParserException.