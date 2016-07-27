tests
testvalidsa069xml
	"Source file: xmltest/valid/sa/069.xml"

	self
		shouldnt: [
			self
				parse: self class sourcevalidsa069xml
				documentURI: 'valid/sa/069.xml']
		raise: self exceptionClass