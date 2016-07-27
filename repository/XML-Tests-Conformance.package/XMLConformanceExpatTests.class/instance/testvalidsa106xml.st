tests
testvalidsa106xml
	"Source file: xmltest/valid/sa/106.xml"

	self
		shouldnt: [
			self
				parse: self class sourcevalidsa106xml
				documentURI: 'valid/sa/106.xml']
		raise: self exceptionClass