tests
testvalidsa012xml
	"Source file: xmltest/valid/sa/012.xml"

	self
		shouldnt: [
			self
				parse: self class sourcevalidsa012xml
				documentURI: 'valid/sa/012.xml']
		raise: self exceptionClass