tests
testvalidsa057xml
	"Source file: xmltest/valid/sa/057.xml"

	self
		shouldnt: [
			self
				parse: self class sourcevalidsa057xml
				documentURI: 'valid/sa/057.xml']
		raise: self exceptionClass