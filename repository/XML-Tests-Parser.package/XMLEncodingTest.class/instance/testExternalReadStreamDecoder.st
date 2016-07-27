tests
testExternalReadStreamDecoder
	| readStreamAdapter |

	readStreamAdapter :=
		XMLDecodingReadStreamAdapter on: 
			(self convertableStreamOn:
				self utf16LittleEndianBOM, (self asciiToUTF16LE: self sourceXML)).

	self
		shouldnt: [SAXHandler parse: readStreamAdapter]
		raise: XMLParserException.

	self
		assert: readStreamAdapter atEnd;
		assert: (readStreamAdapter streamConverter isKindOf: XMLUTF16StreamConverter).