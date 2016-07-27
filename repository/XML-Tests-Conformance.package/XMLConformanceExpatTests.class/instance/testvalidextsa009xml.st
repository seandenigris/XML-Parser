tests
testvalidextsa009xml
	"Source file: xmltest/valid/ext-sa/009.xml"

	self
		shouldnt: [
			self
				parse: self class sourcevalidextsa009xml
				documentURI: 'valid/ext-sa/009.xml']
		raise: self exceptionClass