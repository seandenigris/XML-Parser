tests
testvalidnotsa028xml
	"Source file: xmltest/valid/not-sa/028.xml"

	self
		shouldnt: [
			self
				parse: self class sourcevalidnotsa028xml
				documentURI: 'valid/not-sa/028.xml']
		raise: self exceptionClass