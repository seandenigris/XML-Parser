tests
testvalidsa011xml
	"Source file: xmltest/valid/sa/011.xml"

	self
		shouldnt: [
			self
				parse: self class sourcevalidsa011xml
				documentURI: 'valid/sa/011.xml']
		raise: self exceptionClass