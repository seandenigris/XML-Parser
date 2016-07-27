tests
testvalidnotsa018xml
	"Source file: xmltest/valid/not-sa/018.xml"

	self
		shouldnt: [
			self
				parse: self class sourcevalidnotsa018xml
				documentURI: 'valid/not-sa/018.xml']
		raise: self exceptionClass