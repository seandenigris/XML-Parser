tests
testvalidsa107xml
	"Source file: xmltest/valid/sa/107.xml"

	self
		shouldnt: [
			self
				parse: self class sourcevalidsa107xml
				documentURI: 'valid/sa/107.xml']
		raise: self exceptionClass