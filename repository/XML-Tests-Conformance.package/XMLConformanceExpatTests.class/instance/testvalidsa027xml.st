tests
testvalidsa027xml
	"Source file: xmltest/valid/sa/027.xml"

	self
		shouldnt: [
			self
				parse: self class sourcevalidsa027xml
				documentURI: 'valid/sa/027.xml']
		raise: self exceptionClass