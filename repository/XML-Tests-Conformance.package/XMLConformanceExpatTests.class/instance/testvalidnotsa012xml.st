tests
testvalidnotsa012xml
	"Source file: xmltest/valid/not-sa/012.xml"

	self
		shouldnt: [
			self
				parse: self class sourcevalidnotsa012xml
				documentURI: 'valid/not-sa/012.xml']
		raise: self exceptionClass