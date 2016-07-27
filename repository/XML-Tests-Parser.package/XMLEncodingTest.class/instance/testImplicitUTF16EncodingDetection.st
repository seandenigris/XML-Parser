tests
testImplicitUTF16EncodingDetection
	self
		shouldnt: [
			SAXHandler parse:
				(self convertableStreamOn: (self toUTF16: self sourceXML littleEndian: true))]
		raise: XMLParserException.
	self
		shouldnt: [
			SAXHandler parse:
				(self convertableStreamOn: (self toUTF16: self sourceXML littleEndian: false))]
		raise: XMLParserException.