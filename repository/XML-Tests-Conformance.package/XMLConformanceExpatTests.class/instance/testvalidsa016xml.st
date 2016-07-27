tests
testvalidsa016xml
	"Source file: xmltest/valid/sa/016.xml"

	self
		shouldnt: [
			self
				parse: self class sourcevalidsa016xml
				documentURI: 'valid/sa/016.xml']
		raise: self exceptionClass