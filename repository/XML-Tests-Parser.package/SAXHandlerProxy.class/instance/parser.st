parsing
parser
	^ XMLParser
		driver: (self driverClass saxHandler: self)
		on: saxHandler input