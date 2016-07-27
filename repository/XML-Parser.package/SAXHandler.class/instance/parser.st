parsing
parser
	self configuration parserHandlerClass: self class.

	^ XMLParser
		driver: (SAXDriver saxHandler: self)
		on: input.