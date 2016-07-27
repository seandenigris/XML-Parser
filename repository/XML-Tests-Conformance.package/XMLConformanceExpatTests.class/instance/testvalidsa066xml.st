tests
testvalidsa066xml
	"Source file: xmltest/valid/sa/066.xml"

	self
		shouldnt: [
			self
				parse: self class sourcevalidsa066xml
				documentURI: 'valid/sa/066.xml']
		raise: self exceptionClass