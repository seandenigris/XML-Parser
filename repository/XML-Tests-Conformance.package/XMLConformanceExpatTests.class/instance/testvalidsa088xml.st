tests
testvalidsa088xml
	"Source file: xmltest/valid/sa/088.xml"

	self
		shouldnt: [
			self
				parse: self class sourcevalidsa088xml
				documentURI: 'valid/sa/088.xml']
		raise: self exceptionClass