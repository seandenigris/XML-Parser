tests
testvalidsa073xml
	"Source file: xmltest/valid/sa/073.xml"

	self
		shouldnt: [
			self
				parse: self class sourcevalidsa073xml
				documentURI: 'valid/sa/073.xml']
		raise: self exceptionClass