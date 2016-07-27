tests
testUTF16BigEndianByteOrderMarkDetection
	self
		should: [
			SAXHandler parse:
				(self convertableStreamOn: self utf16BigEndianBOM, self sourceXML)]
		raise: XMLParserException.
	self
		should: [
			SAXHandler parse:
				(self convertableStreamOn:
					self utf16BigEndianBOM, (self asciiToUTF16LE: self sourceXML))]
		raise: XMLParserException.
	self
		shouldnt: [
			SAXHandler parse:
				(self convertableStreamOn:
					self utf16BigEndianBOM, (self asciiToUTF16BE: self sourceXML))]
		raise: XMLParserException.