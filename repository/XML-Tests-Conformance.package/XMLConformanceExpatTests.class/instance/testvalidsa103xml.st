tests
testvalidsa103xml
	"Source file: xmltest/valid/sa/103.xml"

	self
		shouldnt: [
			self
				parse: self class sourcevalidsa103xml
				documentURI: 'valid/sa/103.xml']
		raise: self exceptionClass