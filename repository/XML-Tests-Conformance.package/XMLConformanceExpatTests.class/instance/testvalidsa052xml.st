tests
testvalidsa052xml
	"Source file: xmltest/valid/sa/052.xml"

	self
		shouldnt: [
			self
				parse: self class sourcevalidsa052xml
				documentURI: 'valid/sa/052.xml']
		raise: self exceptionClass