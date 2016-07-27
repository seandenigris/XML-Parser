tests
testvalidsa097xml
	"Source file: xmltest/valid/sa/097.xml"

	self
		shouldnt: [
			self
				parse: self class sourcevalidsa097xml
				documentURI: 'valid/sa/097.xml']
		raise: self exceptionClass