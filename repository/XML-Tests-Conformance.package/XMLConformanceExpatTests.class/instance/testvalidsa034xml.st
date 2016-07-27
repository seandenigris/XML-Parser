tests
testvalidsa034xml
	"Source file: xmltest/valid/sa/034.xml"

	self
		shouldnt: [
			self
				parse: self class sourcevalidsa034xml
				documentURI: 'valid/sa/034.xml']
		raise: self exceptionClass