tests
testvalidnotsa021xml
	"Source file: xmltest/valid/not-sa/021.xml"

	self
		shouldnt: [
			self
				parse: self class sourcevalidnotsa021xml
				documentURI: 'valid/not-sa/021.xml']
		raise: self exceptionClass