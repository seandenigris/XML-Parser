tests
testvalidsa099xml
	"Source file: xmltest/valid/sa/099.xml"

	self
		shouldnt: [
			self
				parse: self class sourcevalidsa099xml
				documentURI: 'valid/sa/099.xml']
		raise: self exceptionClass