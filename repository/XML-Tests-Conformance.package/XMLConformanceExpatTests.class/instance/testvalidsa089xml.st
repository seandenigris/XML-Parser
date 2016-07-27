tests
testvalidsa089xml
	"Source file: xmltest/valid/sa/089.xml"

	self
		shouldnt: [
			self
				parse: self class sourcevalidsa089xml
				documentURI: 'valid/sa/089.xml']
		raise: self exceptionClass