tests
testvalidnotsa025xml
	"Source file: xmltest/valid/not-sa/025.xml"

	self
		shouldnt: [
			self
				parse: self class sourcevalidnotsa025xml
				documentURI: 'valid/not-sa/025.xml']
		raise: self exceptionClass