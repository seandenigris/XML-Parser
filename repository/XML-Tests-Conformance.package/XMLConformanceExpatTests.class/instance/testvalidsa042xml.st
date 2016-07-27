tests
testvalidsa042xml
	"Source file: xmltest/valid/sa/042.xml"

	self
		shouldnt: [
			self
				parse: self class sourcevalidsa042xml
				documentURI: 'valid/sa/042.xml']
		raise: self exceptionClass