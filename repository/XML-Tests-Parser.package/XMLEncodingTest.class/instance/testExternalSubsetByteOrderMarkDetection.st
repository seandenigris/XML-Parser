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
						self utf16LittleEndianBOM, (self asciiToUTF16LE: xml))
				documentURI: uri) parseDocument]
		raise: XMLParserException.
	self
		shouldnt: [
			((SAXHandler on: '') parser driver
				externalSubsetParserOn:
					(self convertableStreamOn:
						self utf16BigEndianBOM, (self asciiToUTF16BE: xml))
				documentURI: uri) parseDocument]
		raise: XMLParserException.