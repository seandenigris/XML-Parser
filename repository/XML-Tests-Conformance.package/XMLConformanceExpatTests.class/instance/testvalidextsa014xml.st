tests
testvalidextsa014xml
	"Source file: xmltest/valid/ext-sa/014.xml"

	self
		shouldnt: [
			self
				parse: self class sourcevalidextsa014xml
				documentURI: 'valid/ext-sa/014.xml']
		raise: self exceptionClass