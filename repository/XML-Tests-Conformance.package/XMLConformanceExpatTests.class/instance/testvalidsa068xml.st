tests
testvalidsa068xml
	"Source file: xmltest/valid/sa/068.xml"

	self
		shouldnt: [
			self
				parse: self class sourcevalidsa068xml
				documentURI: 'valid/sa/068.xml']
		raise: self exceptionClass