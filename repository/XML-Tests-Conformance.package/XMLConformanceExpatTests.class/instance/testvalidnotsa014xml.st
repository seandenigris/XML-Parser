tests
testvalidnotsa014xml
	"Source file: xmltest/valid/not-sa/014.xml"

	self
		shouldnt: [
			self
				parse: self class sourcevalidnotsa014xml
				documentURI: 'valid/not-sa/014.xml']
		raise: self exceptionClass