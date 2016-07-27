tests
testvalidsa032xml
	"Source file: xmltest/valid/sa/032.xml"

	self
		shouldnt: [
			self
				parse: self class sourcevalidsa032xml
				documentURI: 'valid/sa/032.xml']
		raise: self exceptionClass