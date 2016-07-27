tests
testvalidsa114xml
	"Source file: xmltest/valid/sa/114.xml"

	self
		shouldnt: [
			self
				parse: self class sourcevalidsa114xml
				documentURI: 'valid/sa/114.xml']
		raise: self exceptionClass