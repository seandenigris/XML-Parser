tests
testvalidnotsa023xml
	"Source file: xmltest/valid/not-sa/023.xml"

	self
		shouldnt: [
			self
				parse: self class sourcevalidnotsa023xml
				documentURI: 'valid/not-sa/023.xml']
		raise: self exceptionClass