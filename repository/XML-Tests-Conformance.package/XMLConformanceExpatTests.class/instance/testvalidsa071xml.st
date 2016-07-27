tests
testvalidsa071xml
	"Source file: xmltest/valid/sa/071.xml"

	self
		shouldnt: [
			self
				parse: self class sourcevalidsa071xml
				documentURI: 'valid/sa/071.xml']
		raise: self exceptionClass