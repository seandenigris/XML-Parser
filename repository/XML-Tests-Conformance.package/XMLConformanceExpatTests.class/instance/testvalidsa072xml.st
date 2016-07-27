tests
testvalidsa072xml
	"Source file: xmltest/valid/sa/072.xml"

	self
		shouldnt: [
			self
				parse: self class sourcevalidsa072xml
				documentURI: 'valid/sa/072.xml']
		raise: self exceptionClass