tests
testvalidnotsa007xml
	"Source file: xmltest/valid/not-sa/007.xml"

	self
		shouldnt: [
			self
				parse: self class sourcevalidnotsa007xml
				documentURI: 'valid/not-sa/007.xml']
		raise: self exceptionClass