tests
testvalidnotsa030xml
	"Source file: xmltest/valid/not-sa/030.xml"

	self
		shouldnt: [
			self
				parse: self class sourcevalidnotsa030xml
				documentURI: 'valid/not-sa/030.xml']
		raise: self exceptionClass