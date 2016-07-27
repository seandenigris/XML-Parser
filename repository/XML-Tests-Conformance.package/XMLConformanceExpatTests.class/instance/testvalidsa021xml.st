tests
testvalidsa021xml
	"Source file: xmltest/valid/sa/021.xml"

	self
		shouldnt: [
			self
				parse: self class sourcevalidsa021xml
				documentURI: 'valid/sa/021.xml']
		raise: self exceptionClass