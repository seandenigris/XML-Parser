tests
testvalidsa119xml
	"Source file: xmltest/valid/sa/119.xml"

	self
		shouldnt: [
			self
				parse: self class sourcevalidsa119xml
				documentURI: 'valid/sa/119.xml']
		raise: self exceptionClass