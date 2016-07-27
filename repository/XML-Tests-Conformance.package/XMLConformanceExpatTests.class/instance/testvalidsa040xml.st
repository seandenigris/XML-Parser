tests
testvalidsa040xml
	"Source file: xmltest/valid/sa/040.xml"

	self
		shouldnt: [
			self
				parse: self class sourcevalidsa040xml
				documentURI: 'valid/sa/040.xml']
		raise: self exceptionClass