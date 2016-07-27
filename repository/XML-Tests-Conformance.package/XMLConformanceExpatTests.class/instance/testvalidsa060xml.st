tests
testvalidsa060xml
	"Source file: xmltest/valid/sa/060.xml"

	self
		shouldnt: [
			self
				parse: self class sourcevalidsa060xml
				documentURI: 'valid/sa/060.xml']
		raise: self exceptionClass