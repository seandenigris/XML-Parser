tests
testvalidsa056xml
	"Source file: xmltest/valid/sa/056.xml"

	self
		shouldnt: [
			self
				parse: self class sourcevalidsa056xml
				documentURI: 'valid/sa/056.xml']
		raise: self exceptionClass