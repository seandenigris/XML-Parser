tests
testUTF8ByteOrderMarkDetection
	self
		should: [
			SAXHandler parse:
				(self convertableStreamOn:
					self utf8BOM, (self toUTF16: self sourceXML littleEndian: true))]
		raise: XMLParserException.
	self
		should: [
			SAXHandler parse:
				(self convertableStreamOn:
					self utf8BOM, (self toUTF16: self sourceXML littleEndian: false))]
		raise: XMLParserException.
	self
		shouldnt: [
			SAXHandler parse:
				(self convertableStreamOn: self utf8BOM, self sourceXML)]
		raise: XMLParserException.