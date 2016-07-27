tests
testvalidextsa005xml
	"Source file: xmltest/valid/ext-sa/005.xml"

	self
		shouldnt: [
			self
				parse: self class sourcevalidextsa005xml
				documentURI: 'valid/ext-sa/005.xml']
		raise: self exceptionClass