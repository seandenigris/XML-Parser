tests
testvalidsa090xml
	"Source file: xmltest/valid/sa/090.xml"

	self
		shouldnt: [
			self
				parse: self class sourcevalidsa090xml
				documentURI: 'valid/sa/090.xml']
		raise: self exceptionClass