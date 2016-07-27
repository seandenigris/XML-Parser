tests
testvalidnotsa010xml
	"Source file: xmltest/valid/not-sa/010.xml"

	self
		shouldnt: [
			self
				parse: self class sourcevalidnotsa010xml
				documentURI: 'valid/not-sa/010.xml']
		raise: self exceptionClass