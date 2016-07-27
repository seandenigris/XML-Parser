tests
testvalidextsa006xml
	"Source file: xmltest/valid/ext-sa/006.xml"

	self
		shouldnt: [
			self
				parse: self class sourcevalidextsa006xml
				documentURI: 'valid/ext-sa/006.xml']
		raise: self exceptionClass