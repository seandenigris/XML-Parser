tests
testvalidnotsa027xml
	"Source file: xmltest/valid/not-sa/027.xml"

	self
		shouldnt: [
			self
				parse: self class sourcevalidnotsa027xml
				documentURI: 'valid/not-sa/027.xml']
		raise: self exceptionClass