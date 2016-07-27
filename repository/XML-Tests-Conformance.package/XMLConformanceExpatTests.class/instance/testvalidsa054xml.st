tests
testvalidsa054xml
	"Source file: xmltest/valid/sa/054.xml"

	self
		shouldnt: [
			self
				parse: self class sourcevalidsa054xml
				documentURI: 'valid/sa/054.xml']
		raise: self exceptionClass