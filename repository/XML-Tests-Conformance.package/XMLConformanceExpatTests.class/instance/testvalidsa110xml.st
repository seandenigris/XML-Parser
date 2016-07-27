tests
testvalidsa110xml
	"Source file: xmltest/valid/sa/110.xml"

	self
		shouldnt: [
			self
				parse: self class sourcevalidsa110xml
				documentURI: 'valid/sa/110.xml']
		raise: self exceptionClass