tests
testvalidsa033xml
	"Source file: xmltest/valid/sa/033.xml"

	self
		shouldnt: [
			self
				parse: self class sourcevalidsa033xml
				documentURI: 'valid/sa/033.xml']
		raise: self exceptionClass