tests
testvalidsa030xml
	"Source file: xmltest/valid/sa/030.xml"

	self
		shouldnt: [
			self
				parse: self class sourcevalidsa030xml
				documentURI: 'valid/sa/030.xml']
		raise: self exceptionClass