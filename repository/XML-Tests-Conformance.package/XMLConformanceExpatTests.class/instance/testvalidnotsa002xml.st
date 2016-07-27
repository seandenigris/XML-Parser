tests
testvalidnotsa002xml
	"Source file: xmltest/valid/not-sa/002.xml"

	self
		shouldnt: [
			self
				parse: self class sourcevalidnotsa002xml
				documentURI: 'valid/not-sa/002.xml']
		raise: self exceptionClass