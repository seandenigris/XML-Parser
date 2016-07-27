tests
testvalidsa087xml
	"Source file: xmltest/valid/sa/087.xml"

	self
		shouldnt: [
			self
				parse: self class sourcevalidsa087xml
				documentURI: 'valid/sa/087.xml']
		raise: self exceptionClass