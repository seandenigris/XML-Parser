tests
testvalidsa118xml
	"Source file: xmltest/valid/sa/118.xml"

	self
		shouldnt: [
			self
				parse: self class sourcevalidsa118xml
				documentURI: 'valid/sa/118.xml']
		raise: self exceptionClass