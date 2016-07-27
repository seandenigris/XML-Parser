tests
testvalidsa031xml
	"Source file: xmltest/valid/sa/031.xml"

	self
		shouldnt: [
			self
				parse: self class sourcevalidsa031xml
				documentURI: 'valid/sa/031.xml']
		raise: self exceptionClass