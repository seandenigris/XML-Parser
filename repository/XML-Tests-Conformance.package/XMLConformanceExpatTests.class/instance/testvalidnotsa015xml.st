tests
testvalidnotsa015xml
	"Source file: xmltest/valid/not-sa/015.xml"

	self
		shouldnt: [
			self
				parse: self class sourcevalidnotsa015xml
				documentURI: 'valid/not-sa/015.xml']
		raise: self exceptionClass