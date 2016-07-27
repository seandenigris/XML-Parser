tests
testvalidextsa003xml
	"Source file: xmltest/valid/ext-sa/003.xml"

	self
		shouldnt: [
			self
				parse: self class sourcevalidextsa003xml
				documentURI: 'valid/ext-sa/003.xml']
		raise: self exceptionClass