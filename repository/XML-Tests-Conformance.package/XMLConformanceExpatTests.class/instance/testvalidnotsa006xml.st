tests
testvalidnotsa006xml
	"Source file: xmltest/valid/not-sa/006.xml"

	self
		shouldnt: [
			self
				parse: self class sourcevalidnotsa006xml
				documentURI: 'valid/not-sa/006.xml']
		raise: self exceptionClass