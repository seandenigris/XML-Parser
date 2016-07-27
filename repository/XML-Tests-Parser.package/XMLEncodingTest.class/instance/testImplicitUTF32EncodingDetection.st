tests
testImplicitUTF32EncodingDetection
	self
		shouldnt: [
			SAXHandler parse:
				(self convertableStreamOn: (self toUTF32: self sourceXML littleEndian: true))]
		raise: XMLParserException.
	self
		shouldnt: [
			SAXHandler parse:
				(self convertableStreamOn: (self toUTF32: self sourceXML littleEndian: false))]
		raise: XMLParserException.