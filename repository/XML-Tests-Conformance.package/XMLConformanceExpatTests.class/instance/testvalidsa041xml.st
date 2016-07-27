tests
testvalidsa041xml
	"Source file: xmltest/valid/sa/041.xml"

	self
		shouldnt: [
			self
				parse: self class sourcevalidsa041xml
				documentURI: 'valid/sa/041.xml']
		raise: self exceptionClass