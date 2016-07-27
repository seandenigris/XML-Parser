tests
testvalidsa115xml
	"Source file: xmltest/valid/sa/115.xml"

	self
		shouldnt: [
			self
				parse: self class sourcevalidsa115xml
				documentURI: 'valid/sa/115.xml']
		raise: self exceptionClass