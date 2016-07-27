tests
testvalidsa053xml
	"Source file: xmltest/valid/sa/053.xml"

	self
		shouldnt: [
			self
				parse: self class sourcevalidsa053xml
				documentURI: 'valid/sa/053.xml']
		raise: self exceptionClass