tests
testvalidnotsa026xml
	"Source file: xmltest/valid/not-sa/026.xml"

	self
		shouldnt: [
			self
				parse: self class sourcevalidnotsa026xml
				documentURI: 'valid/not-sa/026.xml']
		raise: self exceptionClass