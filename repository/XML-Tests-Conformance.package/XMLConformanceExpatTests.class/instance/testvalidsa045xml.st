tests
testvalidsa045xml
	"Source file: xmltest/valid/sa/045.xml"

	self
		shouldnt: [
			self
				parse: self class sourcevalidsa045xml
				documentURI: 'valid/sa/045.xml']
		raise: self exceptionClass