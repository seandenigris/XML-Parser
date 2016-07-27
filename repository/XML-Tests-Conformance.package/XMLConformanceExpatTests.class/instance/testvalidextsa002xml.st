tests
testvalidextsa002xml
	"Source file: xmltest/valid/ext-sa/002.xml"

	self
		shouldnt: [
			self
				parse: self class sourcevalidextsa002xml
				documentURI: 'valid/ext-sa/002.xml']
		raise: self exceptionClass