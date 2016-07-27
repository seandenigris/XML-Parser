tests
testvalidsa029xml
	"Source file: xmltest/valid/sa/029.xml"

	self
		shouldnt: [
			self
				parse: self class sourcevalidsa029xml
				documentURI: 'valid/sa/029.xml']
		raise: self exceptionClass