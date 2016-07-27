tests
testUTF16LittleEndianByteOrderMarkDetection
	self
		should: [
			SAXHandler parse:
				(self convertableStreamOn:
					self utf16LittleEndianBOM, self sourceXML)]
		raise: XMLParserException.
	self
		should: [
			SAXHandler parse:
				(self convertableStreamOn:
					self utf16LittleEndianBOM, (self toUTF16: self sourceXML littleEndian: false))]
		raise: XMLParserException.
	self
		shouldnt: [
			SAXHandler parse:
				(self convertableStreamOn:
					self utf16LittleEndianBOM, (self toUTF16: self sourceXML littleEndian: true))]
		raise: XMLParserException.