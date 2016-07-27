tests
testvalidsa025xml
	"Source file: xmltest/valid/sa/025.xml"

	self
		shouldnt: [
			self
				parse: self class sourcevalidsa025xml
				documentURI: 'valid/sa/025.xml']
		raise: self exceptionClass