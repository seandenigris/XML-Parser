parsing
parser
	self configuration parserClass: self class.

	^ XMLParser
		driver: (SAXDriver saxHandler: self)
		on: input.