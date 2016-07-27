tests
testvalidsa023xml
	"Source file: xmltest/valid/sa/023.xml"

	self
		shouldnt: [
			self
				parse: self class sourcevalidsa023xml
				documentURI: 'valid/sa/023.xml']
		raise: self exceptionClass