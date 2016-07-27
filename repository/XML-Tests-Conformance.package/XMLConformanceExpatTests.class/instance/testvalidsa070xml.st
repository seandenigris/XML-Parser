tests
testvalidsa070xml
	"Source file: xmltest/valid/sa/070.xml"

	self
		shouldnt: [
			self
				parse: self class sourcevalidsa070xml
				documentURI: 'valid/sa/070.xml']
		raise: self exceptionClass