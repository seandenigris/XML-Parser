tests
testvalidsa111xml
	"Source file: xmltest/valid/sa/111.xml"

	self
		shouldnt: [
			self
				parse: self class sourcevalidsa111xml
				documentURI: 'valid/sa/111.xml']
		raise: self exceptionClass