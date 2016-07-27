tests
testvalidsa101xml
	"Source file: xmltest/valid/sa/101.xml"

	self
		shouldnt: [
			self
				parse: self class sourcevalidsa101xml
				documentURI: 'valid/sa/101.xml']
		raise: self exceptionClass