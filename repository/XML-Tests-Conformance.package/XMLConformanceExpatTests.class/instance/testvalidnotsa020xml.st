tests
testvalidnotsa020xml
	"Source file: xmltest/valid/not-sa/020.xml"

	self
		shouldnt: [
			self
				parse: self class sourcevalidnotsa020xml
				documentURI: 'valid/not-sa/020.xml']
		raise: self exceptionClass