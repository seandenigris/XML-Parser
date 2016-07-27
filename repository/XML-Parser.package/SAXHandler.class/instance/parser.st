parsing
parser
	self configuration parserHandlerClass: self class.

	^ XMLParser
		driver: (self driverClass saxHandler: self)
		on: input.