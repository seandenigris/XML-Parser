tests
testvalidsa084xml
	"Source file: xmltest/valid/sa/084.xml"

	self
		shouldnt: [
			self
				parse: self class sourcevalidsa084xml
				documentURI: 'valid/sa/084.xml']
		raise: self exceptionClass