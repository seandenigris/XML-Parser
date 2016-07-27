tests
testvalidsa078xml
	"Source file: xmltest/valid/sa/078.xml"

	self
		shouldnt: [
			self
				parse: self class sourcevalidsa078xml
				documentURI: 'valid/sa/078.xml']
		raise: self exceptionClass