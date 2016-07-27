tests
testvalidsa081xml
	"Source file: xmltest/valid/sa/081.xml"

	self
		shouldnt: [
			self
				parse: self class sourcevalidsa081xml
				documentURI: 'valid/sa/081.xml']
		raise: self exceptionClass