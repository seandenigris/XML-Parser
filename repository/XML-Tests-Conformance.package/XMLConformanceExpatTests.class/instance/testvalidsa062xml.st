tests
testvalidsa062xml
	"Source file: xmltest/valid/sa/062.xml"

	self
		shouldnt: [
			self
				parse: self class sourcevalidsa062xml
				documentURI: 'valid/sa/062.xml']
		raise: self exceptionClass