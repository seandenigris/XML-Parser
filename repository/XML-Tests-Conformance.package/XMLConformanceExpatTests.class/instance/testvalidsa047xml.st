tests
testvalidsa047xml
	"Source file: xmltest/valid/sa/047.xml"

	self
		shouldnt: [
			self
				parse: self class sourcevalidsa047xml
				documentURI: 'valid/sa/047.xml']
		raise: self exceptionClass