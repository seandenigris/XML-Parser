tests
testvalidsa039xml
	"Source file: xmltest/valid/sa/039.xml"

	self
		shouldnt: [
			self
				parse: self class sourcevalidsa039xml
				documentURI: 'valid/sa/039.xml']
		raise: self exceptionClass