tests
testvalidsa086xml
	"Source file: xmltest/valid/sa/086.xml"

	self
		shouldnt: [
			self
				parse: self class sourcevalidsa086xml
				documentURI: 'valid/sa/086.xml']
		raise: self exceptionClass