tests
testvalidnotsa013xml
	"Source file: xmltest/valid/not-sa/013.xml"

	self
		shouldnt: [
			self
				parse: self class sourcevalidnotsa013xml
				documentURI: 'valid/not-sa/013.xml']
		raise: self exceptionClass