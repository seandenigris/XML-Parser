tests
testvalidsa046xml
	"Source file: xmltest/valid/sa/046.xml"

	self
		shouldnt: [
			self
				parse: self class sourcevalidsa046xml
				documentURI: 'valid/sa/046.xml']
		raise: self exceptionClass