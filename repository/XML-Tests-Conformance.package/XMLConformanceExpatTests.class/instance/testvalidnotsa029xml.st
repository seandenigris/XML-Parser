tests
testvalidnotsa029xml
	"Source file: xmltest/valid/not-sa/029.xml"

	self
		shouldnt: [
			self
				parse: self class sourcevalidnotsa029xml
				documentURI: 'valid/not-sa/029.xml']
		raise: self exceptionClass