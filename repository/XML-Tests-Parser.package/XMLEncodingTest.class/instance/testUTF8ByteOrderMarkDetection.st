tests
testUTF8ByteOrderMarkDetection
	self
		should: [
			SAXHandler parse:
				(self convertableStreamOn:
					self utf8BOM, (self asciiToUTF16LE: self sourceXML))]
		raise: XMLParserException.
	self
		should: [
			SAXHandler parse:
				(self convertableStreamOn:
					self utf8BOM, (self asciiToUTF16BE: self sourceXML))]
		raise: XMLParserException.
	self
		shouldnt: [
			SAXHandler parse:
				(self convertableStreamOn:
					self utf8BOM, self sourceXML)]
		raise: XMLParserException.