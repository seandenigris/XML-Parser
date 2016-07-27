tests
testvalidsa076xml
	"Source file: xmltest/valid/sa/076.xml"

	self
		shouldnt: [
			self
				parse: self class sourcevalidsa076xml
				documentURI: 'valid/sa/076.xml']
		raise: self exceptionClass