tests
testvalidsa098xml
	"Source file: xmltest/valid/sa/098.xml"

	self
		shouldnt: [
			self
				parse: self class sourcevalidsa098xml
				documentURI: 'valid/sa/098.xml']
		raise: self exceptionClass