tests
testvalidsa015xml
	"Source file: xmltest/valid/sa/015.xml"

	self
		shouldnt: [
			self
				parse: self class sourcevalidsa015xml
				documentURI: 'valid/sa/015.xml']
		raise: self exceptionClass