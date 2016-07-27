tests
testvalidextsa012xml
	"Source file: xmltest/valid/ext-sa/012.xml"

	self
		shouldnt: [
			self
				parse: self class sourcevalidextsa012xml
				documentURI: 'valid/ext-sa/012.xml']
		raise: self exceptionClass