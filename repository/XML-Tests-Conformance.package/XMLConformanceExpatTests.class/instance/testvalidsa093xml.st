tests
testvalidsa093xml
	"Source file: xmltest/valid/sa/093.xml"

	self
		shouldnt: [
			self
				parse: self class sourcevalidsa093xml
				documentURI: 'valid/sa/093.xml']
		raise: self exceptionClass