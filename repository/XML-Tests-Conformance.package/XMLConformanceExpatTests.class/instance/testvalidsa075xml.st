tests
testvalidsa075xml
	"Source file: xmltest/valid/sa/075.xml"

	self
		shouldnt: [
			self
				parse: self class sourcevalidsa075xml
				documentURI: 'valid/sa/075.xml']
		raise: self exceptionClass