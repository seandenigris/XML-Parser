tests
testvalidsa001xml
	"Source file: xmltest/valid/sa/001.xml"

	self
		shouldnt: [
			self
				parse: self class sourcevalidsa001xml
				documentURI: 'valid/sa/001.xml']
		raise: self exceptionClass