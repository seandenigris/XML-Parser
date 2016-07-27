tests
testvalidsa003xml
	"Source file: xmltest/valid/sa/003.xml"

	self
		shouldnt: [
			self
				parse: self class sourcevalidsa003xml
				documentURI: 'valid/sa/003.xml']
		raise: self exceptionClass