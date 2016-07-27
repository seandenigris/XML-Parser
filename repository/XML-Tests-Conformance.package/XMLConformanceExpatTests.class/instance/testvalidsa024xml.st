tests
testvalidsa024xml
	"Source file: xmltest/valid/sa/024.xml"

	self
		shouldnt: [
			self
				parse: self class sourcevalidsa024xml
				documentURI: 'valid/sa/024.xml']
		raise: self exceptionClass