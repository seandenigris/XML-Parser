tests
testvalidsa105xml
	"Source file: xmltest/valid/sa/105.xml"

	self
		shouldnt: [
			self
				parse: self class sourcevalidsa105xml
				documentURI: 'valid/sa/105.xml']
		raise: self exceptionClass