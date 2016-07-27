tests
testvalidsa065xml
	"Source file: xmltest/valid/sa/065.xml"

	self
		shouldnt: [
			self
				parse: self class sourcevalidsa065xml
				documentURI: 'valid/sa/065.xml']
		raise: self exceptionClass