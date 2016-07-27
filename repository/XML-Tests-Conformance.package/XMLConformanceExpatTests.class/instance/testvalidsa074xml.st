tests
testvalidsa074xml
	"Source file: xmltest/valid/sa/074.xml"

	self
		shouldnt: [
			self
				parse: self class sourcevalidsa074xml
				documentURI: 'valid/sa/074.xml']
		raise: self exceptionClass