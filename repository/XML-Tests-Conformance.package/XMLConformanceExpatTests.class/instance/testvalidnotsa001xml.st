tests
testvalidnotsa001xml
	"Source file: xmltest/valid/not-sa/001.xml"

	self
		shouldnt: [
			self
				parse: self class sourcevalidnotsa001xml
				documentURI: 'valid/not-sa/001.xml']
		raise: self exceptionClass