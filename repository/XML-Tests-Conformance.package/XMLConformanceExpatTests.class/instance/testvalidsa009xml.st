tests
testvalidsa009xml
	"Source file: xmltest/valid/sa/009.xml"

	self
		shouldnt: [
			self
				parse: self class sourcevalidsa009xml
				documentURI: 'valid/sa/009.xml']
		raise: self exceptionClass