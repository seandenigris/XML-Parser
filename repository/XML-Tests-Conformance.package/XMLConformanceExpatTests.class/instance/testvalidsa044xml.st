tests
testvalidsa044xml
	"Source file: xmltest/valid/sa/044.xml"

	self
		shouldnt: [
			self
				parse: self class sourcevalidsa044xml
				documentURI: 'valid/sa/044.xml']
		raise: self exceptionClass