tests
testvalidsa014xml
	"Source file: xmltest/valid/sa/014.xml"

	self
		shouldnt: [
			self
				parse: self class sourcevalidsa014xml
				documentURI: 'valid/sa/014.xml']
		raise: self exceptionClass