tests
testvalidsa079xml
	"Source file: xmltest/valid/sa/079.xml"

	self
		shouldnt: [
			self
				parse: self class sourcevalidsa079xml
				documentURI: 'valid/sa/079.xml']
		raise: self exceptionClass