tests
testvalidsa061xml
	"Source file: xmltest/valid/sa/061.xml"

	self
		shouldnt: [
			self
				parse: self class sourcevalidsa061xml
				documentURI: 'valid/sa/061.xml']
		raise: self exceptionClass