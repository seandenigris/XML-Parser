tests
testvalidsa091xml
	"Source file: xmltest/valid/sa/091.xml"

	self
		shouldnt: [
			self
				parse: self class sourcevalidsa091xml
				documentURI: 'valid/sa/091.xml']
		raise: self exceptionClass