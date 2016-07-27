tests
testUTF32LittleEndianByteOrderMarkDetection
	self
		should: [
			SAXHandler parse:
				(self convertableStreamOn: self utf32LittleEndianBOM, self sourceXML)]
		raise: XMLParserException.
	self
		should: [
			SAXHandler parse:
				(self convertableStreamOn:
					self utf32LittleEndianBOM, (self asciiToUTF32BE: self sourceXML))]
		raise: XMLParserException.
	self
		shouldnt: [
			SAXHandler parse:
				(self convertableStreamOn:
					self utf32LittleEndianBOM, (self asciiToUTF32LE: self sourceXML))]
		raise: XMLParserException.