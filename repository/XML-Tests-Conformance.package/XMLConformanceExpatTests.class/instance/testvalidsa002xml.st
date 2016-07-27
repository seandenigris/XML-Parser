tests
testvalidsa002xml
	"Source file: xmltest/valid/sa/002.xml"

	self
		shouldnt: [
			self
				parse: self class sourcevalidsa002xml
				documentURI: 'valid/sa/002.xml']
		raise: self exceptionClass