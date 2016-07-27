tests
testUTF32LittleEndianByteOrderMarkDetection
	self
		should: [
			SAXHandler parse:
				(self convertableStreamOn:
					self utf32LittleEndianBOM, self sourceXML)]
		raise: XMLParserException.
	self
		should: [
			SAXHandler parse:
				(self convertableStreamOn:
					self utf32LittleEndianBOM, (self toUTF32: self sourceXML littleEndian: false))]
		raise: XMLParserException.
	self
		shouldnt: [
			SAXHandler parse:
				(self convertableStreamOn:
					self utf32LittleEndianBOM, (self toUTF32: self sourceXML littleEndian: true))]
		raise: XMLParserException.