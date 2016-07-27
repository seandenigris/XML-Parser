tests
testvalidsa048xml
	"Source file: xmltest/valid/sa/048.xml"

	self
		shouldnt: [
			self
				parse: self class sourcevalidsa048xml
				documentURI: 'valid/sa/048.xml']
		raise: self exceptionClass