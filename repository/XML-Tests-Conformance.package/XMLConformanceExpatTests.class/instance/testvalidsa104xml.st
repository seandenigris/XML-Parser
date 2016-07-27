tests
testvalidsa104xml
	"Source file: xmltest/valid/sa/104.xml"

	self
		shouldnt: [
			self
				parse: self class sourcevalidsa104xml
				documentURI: 'valid/sa/104.xml']
		raise: self exceptionClass