tests
testvalidextsa013xml
	"Source file: xmltest/valid/ext-sa/013.xml"

	self
		shouldnt: [
			self
				parse: self class sourcevalidextsa013xml
				documentURI: 'valid/ext-sa/013.xml']
		raise: self exceptionClass