tests
testvalidsa055xml
	"Source file: xmltest/valid/sa/055.xml"

	self
		shouldnt: [
			self
				parse: self class sourcevalidsa055xml
				documentURI: 'valid/sa/055.xml']
		raise: self exceptionClass