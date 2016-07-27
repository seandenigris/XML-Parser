tests
testExternalReadStreamDecoder
	| readStreamAdapter |

	readStreamAdapter :=
		XMLDecodingReadStreamAdapter onExternalStream: 
			(self convertableStreamOn:
				self utf16LittleEndianBOM, (self toUTF16: self sourceXML littleEndian: true)).

	self
		shouldnt: [SAXHandler parse: readStreamAdapter]
		raise: XMLParserException.

	self
		assert: readStreamAdapter atEnd;
		assert: (readStreamAdapter streamDecoder isKindOf: XMLUTF16StreamDecoder).