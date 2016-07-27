tests
testvalidsa026xml
	"Source file: xmltest/valid/sa/026.xml"

	self
		shouldnt: [
			self
				parse: self class sourcevalidsa026xml
				documentURI: 'valid/sa/026.xml']
		raise: self exceptionClass