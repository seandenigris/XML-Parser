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
					self utf16LittleEndianBOM, (self asciiToUTF16BE: self sourceXML))]
		raise: XMLParserException.
	self
		shouldnt: [
			SAXHandler parse:
				(self convertableStreamOn:
					self utf16LittleEndianBOM, (self asciiToUTF16LE: self sourceXML))]
		raise: XMLParserException.