tests
testvalidsa085xml
	"Source file: xmltest/valid/sa/085.xml"

	self
		shouldnt: [
			self
				parse: self class sourcevalidsa085xml
				documentURI: 'valid/sa/085.xml']
		raise: self exceptionClass