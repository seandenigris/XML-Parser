tests
testImplicitUTF16EncodingDetection
	self
		shouldnt: [
			SAXHandler parse:
				(self convertableStreamOn: (self asciiToUTF16LE: self sourceXML))]
		raise: XMLParserException.
	self
		shouldnt: [
			SAXHandler parse:
				(self convertableStreamOn: (self asciiToUTF16BE: self sourceXML))]
		raise: XMLParserException.