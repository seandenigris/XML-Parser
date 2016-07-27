tests
testvalidsa008xml
	"Source file: xmltest/valid/sa/008.xml"

	self
		shouldnt: [
			self
				parse: self class sourcevalidsa008xml
				documentURI: 'valid/sa/008.xml']
		raise: self exceptionClass