tests
testvalidsa064xml
	"Source file: xmltest/valid/sa/064.xml"

	self
		shouldnt: [
			self
				parse: self class sourcevalidsa064xml
				documentURI: 'valid/sa/064.xml']
		raise: self exceptionClass