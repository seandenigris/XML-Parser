tests
testvalidnotsa016xml
	"Source file: xmltest/valid/not-sa/016.xml"

	self
		shouldnt: [
			self
				parse: self class sourcevalidnotsa016xml
				documentURI: 'valid/not-sa/016.xml']
		raise: self exceptionClass