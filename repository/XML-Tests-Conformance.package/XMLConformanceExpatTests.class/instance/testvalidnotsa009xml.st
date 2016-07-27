tests
testvalidnotsa009xml
	"Source file: xmltest/valid/not-sa/009.xml"

	self
		shouldnt: [
			self
				parse: self class sourcevalidnotsa009xml
				documentURI: 'valid/not-sa/009.xml']
		raise: self exceptionClass