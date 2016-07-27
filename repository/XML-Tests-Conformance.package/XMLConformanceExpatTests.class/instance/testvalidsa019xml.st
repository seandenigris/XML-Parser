tests
testvalidsa019xml
	"Source file: xmltest/valid/sa/019.xml"

	self
		shouldnt: [
			self
				parse: self class sourcevalidsa019xml
				documentURI: 'valid/sa/019.xml']
		raise: self exceptionClass