tests
testvalidnotsa004xml
	"Source file: xmltest/valid/not-sa/004.xml"

	self
		shouldnt: [
			self
				parse: self class sourcevalidnotsa004xml
				documentURI: 'valid/not-sa/004.xml']
		raise: self exceptionClass