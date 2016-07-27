tests
testvalidsa092xml
	"Source file: xmltest/valid/sa/092.xml"

	self
		shouldnt: [
			self
				parse: self class sourcevalidsa092xml
				documentURI: 'valid/sa/092.xml']
		raise: self exceptionClass