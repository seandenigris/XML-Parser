tests
testImplicitUTF32EncodingDetection
	self
		shouldnt: [
			SAXHandler parse:
				(self convertableStreamOn:
					(self asciiToUTF32LE: self sourceXML))]
		raise: XMLParserException.
	self
		shouldnt: [
			SAXHandler parse:
				(self convertableStreamOn:
					(self asciiToUTF32BE: self sourceXML))]
		raise: XMLParserException.