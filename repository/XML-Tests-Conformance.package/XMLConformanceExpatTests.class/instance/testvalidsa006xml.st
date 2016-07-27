tests
testvalidsa006xml
	"Source file: xmltest/valid/sa/006.xml"

	self
		shouldnt: [
			self
				parse: self class sourcevalidsa006xml
				documentURI: 'valid/sa/006.xml']
		raise: self exceptionClass