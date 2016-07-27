tests
testvalidextsa004xml
	"Source file: xmltest/valid/ext-sa/004.xml"

	self
		shouldnt: [
			self
				parse: self class sourcevalidextsa004xml
				documentURI: 'valid/ext-sa/004.xml']
		raise: self exceptionClass