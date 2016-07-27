tests
testvalidsa112xml
	"Source file: xmltest/valid/sa/112.xml"

	self
		shouldnt: [
			self
				parse: self class sourcevalidsa112xml
				documentURI: 'valid/sa/112.xml']
		raise: self exceptionClass