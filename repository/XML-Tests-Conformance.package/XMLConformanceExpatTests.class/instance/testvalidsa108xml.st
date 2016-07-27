tests
testvalidsa108xml
	"Source file: xmltest/valid/sa/108.xml"

	self
		shouldnt: [
			self
				parse: self class sourcevalidsa108xml
				documentURI: 'valid/sa/108.xml']
		raise: self exceptionClass