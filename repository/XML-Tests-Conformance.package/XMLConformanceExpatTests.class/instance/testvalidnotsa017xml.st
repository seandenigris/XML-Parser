tests
testvalidnotsa017xml
	"Source file: xmltest/valid/not-sa/017.xml"

	self
		shouldnt: [
			self
				parse: self class sourcevalidnotsa017xml
				documentURI: 'valid/not-sa/017.xml']
		raise: self exceptionClass