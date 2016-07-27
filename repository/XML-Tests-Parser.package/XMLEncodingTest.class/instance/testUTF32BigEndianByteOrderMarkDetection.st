tests
testUTF32BigEndianByteOrderMarkDetection
	self
		should: [
			SAXHandler parse:
				(self convertableStreamOn:
					self utf32BigEndianBOM, self sourceXML)]
		raise: XMLParserException.
	self
		should: [
			SAXHandler parse:
				(self convertableStreamOn:
					self utf32BigEndianBOM, (self toUTF32: self sourceXML littleEndian: true))]
		raise: XMLParserException.
	self
		shouldnt: [
			SAXHandler parse:
				(self convertableStreamOn:
					self utf32BigEndianBOM, (self toUTF32: self sourceXML littleEndian: false))]
		raise: XMLParserException.