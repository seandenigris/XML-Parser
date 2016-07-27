tests
testvalidsa010xml
	"Source file: xmltest/valid/sa/010.xml"

	self
		shouldnt: [
			self
				parse: self class sourcevalidsa010xml
				documentURI: 'valid/sa/010.xml']
		raise: self exceptionClass