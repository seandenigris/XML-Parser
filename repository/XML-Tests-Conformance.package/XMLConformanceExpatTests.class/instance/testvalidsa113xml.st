tests
testvalidsa113xml
	"Source file: xmltest/valid/sa/113.xml"

	self
		shouldnt: [
			self
				parse: self class sourcevalidsa113xml
				documentURI: 'valid/sa/113.xml']
		raise: self exceptionClass