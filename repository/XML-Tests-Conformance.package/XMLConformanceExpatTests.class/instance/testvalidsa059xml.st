tests
testvalidsa059xml
	"Source file: xmltest/valid/sa/059.xml"

	self
		shouldnt: [
			self
				parse: self class sourcevalidsa059xml
				documentURI: 'valid/sa/059.xml']
		raise: self exceptionClass