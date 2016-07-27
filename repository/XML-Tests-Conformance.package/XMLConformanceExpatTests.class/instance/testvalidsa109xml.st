tests
testvalidsa109xml
	"Source file: xmltest/valid/sa/109.xml"

	self
		shouldnt: [
			self
				parse: self class sourcevalidsa109xml
				documentURI: 'valid/sa/109.xml']
		raise: self exceptionClass