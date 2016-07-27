tests
testvalidnotsa005xml
	"Source file: xmltest/valid/not-sa/005.xml"

	self
		shouldnt: [
			self
				parse: self class sourcevalidnotsa005xml
				documentURI: 'valid/not-sa/005.xml']
		raise: self exceptionClass