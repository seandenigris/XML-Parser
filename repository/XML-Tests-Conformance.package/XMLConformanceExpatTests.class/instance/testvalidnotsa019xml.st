tests
testvalidnotsa019xml
	"Source file: xmltest/valid/not-sa/019.xml"

	self
		shouldnt: [
			self
				parse: self class sourcevalidnotsa019xml
				documentURI: 'valid/not-sa/019.xml']
		raise: self exceptionClass