tests
testvalidsa004xml
	"Source file: xmltest/valid/sa/004.xml"

	self
		shouldnt: [
			self
				parse: self class sourcevalidsa004xml
				documentURI: 'valid/sa/004.xml']
		raise: self exceptionClass