tests
testvalidnotsa024xml
	"Source file: xmltest/valid/not-sa/024.xml"

	self
		shouldnt: [
			self
				parse: self class sourcevalidnotsa024xml
				documentURI: 'valid/not-sa/024.xml']
		raise: self exceptionClass