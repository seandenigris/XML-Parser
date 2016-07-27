tests
testvalidsa082xml
	"Source file: xmltest/valid/sa/082.xml"

	self
		shouldnt: [
			self
				parse: self class sourcevalidsa082xml
				documentURI: 'valid/sa/082.xml']
		raise: self exceptionClass