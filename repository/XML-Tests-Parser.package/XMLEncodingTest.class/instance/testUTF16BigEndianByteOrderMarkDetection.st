tests
testUTF16BigEndianByteOrderMarkDetection
	self
		should: [
			SAXHandler parse:
				(self convertableStreamOn:
					self utf16BigEndianBOM, self sourceXML)]
		raise: XMLParserException.
	self
		should: [
			SAXHandler parse:
				(self convertableStreamOn:
					self utf16BigEndianBOM, (self toUTF16: self sourceXML littleEndian: true))]
		raise: XMLParserException.
	self
		shouldnt: [
			SAXHandler parse:
				(self convertableStreamOn:
					self utf16BigEndianBOM, (self toUTF16: self sourceXML littleEndian: false))]
		raise: XMLParserException.