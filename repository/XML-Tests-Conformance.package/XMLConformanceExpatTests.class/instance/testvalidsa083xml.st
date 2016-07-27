tests
testvalidsa083xml
	"Source file: xmltest/valid/sa/083.xml"

	self
		shouldnt: [
			self
				parse: self class sourcevalidsa083xml
				documentURI: 'valid/sa/083.xml']
		raise: self exceptionClass