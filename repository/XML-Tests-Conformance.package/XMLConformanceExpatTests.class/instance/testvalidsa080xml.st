tests
testvalidsa080xml
	"Source file: xmltest/valid/sa/080.xml"

	self
		shouldnt: [
			self
				parse: self class sourcevalidsa080xml
				documentURI: 'valid/sa/080.xml']
		raise: self exceptionClass