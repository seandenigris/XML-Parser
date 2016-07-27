parsing
parser
	self configuration parserHandlerClass: self class.

	^ self parserClass
		driver: (self driverClass saxHandler: self)
		on: input.