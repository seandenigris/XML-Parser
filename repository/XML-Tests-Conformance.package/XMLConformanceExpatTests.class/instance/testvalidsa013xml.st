tests
testvalidsa013xml
	"Source file: xmltest/valid/sa/013.xml"

	self
		shouldnt: [
			self
				parse: self class sourcevalidsa013xml
				documentURI: 'valid/sa/013.xml']
		raise: self exceptionClass