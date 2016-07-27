tests
testvalidsa043xml
	"Source file: xmltest/valid/sa/043.xml"

	self
		shouldnt: [
			self
				parse: self class sourcevalidsa043xml
				documentURI: 'valid/sa/043.xml']
		raise: self exceptionClass